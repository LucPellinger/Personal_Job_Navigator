CREATE TABLE `user` (
  `id` integer PRIMARY KEY,
  `username` varchar(255),
  `job_search_mode` varchar(255),
  `created_at` timestamp,
  `email` varchar(255),
  `password_hash` varchar(255)
);

CREATE TABLE `document` (
  `id` integer PRIMARY KEY,
  `documentname` varchar(255),
  `file_type` varchar(255),
  `document_type` varchar(255),
  `created_at` timestamp,
  `user_id` integer NOT NULL,
  `is_global` bool DEFAULT true COMMENT 'True = user-wide document, False = tied to specific application'
);

CREATE TABLE `application` (
  `id` integer PRIMARY KEY,
  `user_id` integer NOT NULL,
  `jobpost_id` integer NOT NULL,
  `created_at` timestamp,
  `status` varchar(255) COMMENT 'Enum: applied, pending, tbd',
  `results` varchar(255) COMMENT 'Enum: open, offer, rejected'
);

CREATE TABLE `application_document` (
  `id` integer PRIMARY KEY,
  `document_id` integer NOT NULL,
  `application_id` integer NOT NULL,
  `side_note` text COMMENT 'Purpose of the attached document (e.g., tailored resume, supporting docs)'
);

CREATE TABLE `company` (
  `id` integer PRIMARY KEY,
  `companyname` text,
  `company_size` text,
  `company_type` varchar(255) COMMENT 'Start-up, SMB, SME, Large Enterprise'
);

CREATE TABLE `jobpost` (
  `id` integer PRIMARY KEY,
  `title` varchar(255),
  `role` varchar(255),
  `department` text,
  `job_url` text,
  `workmode` text COMMENT 'full or part-time',
  `work_setting` text COMMENT 'hybrid, onsite or remote',
  `job_level` varchar(255) COMMENT 'internship, working student, junior, senior',
  `job_location_city` varchar(255),
  `job_location_district` varchar(255),
  `job_location_country` varchar(255),
  `body_introduction` text COMMENT 'Content of the post',
  `body_requirements` text,
  `body_taskdescription` text,
  `body_meta_description` text,
  `body_benefits` text,
  `salary_min` integer,
  `salary_max` integer,
  `candidate_characteristic_keywords` list COMMENT 'Job specific keywords summarizing required skillset',
  `company_id` integer NOT NULL,
  `status` varchar(255),
  `created_at` timestamp
);

ALTER TABLE `document` ADD FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

ALTER TABLE `application` ADD FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

ALTER TABLE `application` ADD FOREIGN KEY (`jobpost_id`) REFERENCES `jobpost` (`id`);

ALTER TABLE `jobpost` ADD FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

ALTER TABLE `application_document` ADD FOREIGN KEY (`document_id`) REFERENCES `document` (`id`);

ALTER TABLE `application_document` ADD FOREIGN KEY (`application_id`) REFERENCES `application` (`id`);
