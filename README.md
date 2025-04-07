# Personal Job Navigator - Happy Job hunting

This is my side project to streamline my application process and make it more organized. It also serves as a fun tool to work with and to apply basic software engineering skills while maintaining tangible outputs and results. The goal is to build something simple but yet useful to integrate into personal job-application workflow.

It will serve to support the application process for interns, graduates, or professionals.

IT Licensed. Built with Python + Django.

---

## 🚧 Roadmap

### ✅ Phase 1: MVP

Basic functionality to manage users and applications.

- [ ] User Registration and Login
- [ ] Password hashing and session-based authentication
- [ ] User Profile Settings (change username/email/password)
- [ ] Create new Job Application
- [ ] View all Job Applications (Overview Table)
- [ ] View single Job Application (Detail View)
- [ ] Edit Job Application
- [ ] Delete Job Application
- [ ] Upload Documents (Resume, Certificates, Cover Letters)
- [ ] Link Documents to Job Applications

---

### ⚙️ Phase 2: Core Features

Job listing creation, dashboard views, and job market insights.

- [ ] Create Job Listings
- [ ] Edit Job Listings
- [ ] Delete Job Listings
- [ ] List all Job Listings
- [ ] Dashboard View:
  - [ ] Map of Job Locations
  - [ ] KPI Summary (e.g., Applications, Offers, Rejections)
  - [ ] Job Status Chart
  - [ ] Filter/Sort Options

---

### ✨ Phase 3: Enhancements

Polish, convenience features, and UX upgrades.

- [ ] Preview uploaded documents
- [ ] Reminder System (follow-ups, interviews)
- [ ] Keyword tagging and filtering
- [ ] Track job source (LinkedIn, referral, etc.)
- [ ] Export to CSV
- [ ] Email alerts or reminders

---

## 🧱 Tech Stack

| Layer        | Tool                     |
|--------------|--------------------------|
| Backend      | Django (Python)           |
| Database     | PostgreSQL / SQLite      |
| ORM          | Django ORM             |
| Frontend     | Django templates (HTML/CSS) |
| Styling      | Tailwind CSS / Bootstrap |
| Auth         | Django built-in auth system            |
| Charts       | Chart.js or Plotly       |
| Maps         | Leaflet.js or Google Maps |
| Deployment   | Render / Railway / Fly.io |

---

## 📁 Suggested Folder Structure

```
jobtracker/
├── app/
│   ├── __init__.py
│   ├── models.py
│   ├── views/
│   │   ├── auth.py
│   │   ├── jobs.py
│   │   ├── dashboard.py
│   ├── templates/
│   │   ├── base.html
│   │   ├── dashboard.html
│   │   ├── job_detail.html
│   ├── static/
│   │   └── css/
├── migrations/
├── uploads/
├── config.py
├── run.py
├── requirements.txt
└── LICENSE
```

---

## 📜 License

This project is licensed under the [MIT License](LICENSE).

## Entity Relationship Diagram
![Alt text](Job_Navigator.png)

Further information regarding the SQL structure can be found in the .sql file.

# Requirements and Functionality of the Application
- User Login Logic
- Overview of existing job listings
- Job Dashboard with Map, Summary Table, simple statistics, and KPI's
- Basic CRUD operations
- Detail view for each job application
- View to create new Job Application
- View to edit Job Application
- View to create Job Listings
- View to edit Job Application
- Button to delete Listings from the DB.
- User Profile Settings view
