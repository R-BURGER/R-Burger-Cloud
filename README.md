# RBurger-Cloud Infrastructure 🍔☁️

---

## 📖 Overview

R Burger is a full food-ordering platform (Web + Admin Dashboard + Mobile App) built on
a .NET 8 backend, with a React frontend hosted on Vercel. This repository documents the
part I owned: **designing, building, and deploying the AWS cloud infrastructure** that
powers the entire system.

---

## 🏗️ Architecture

```
📱 R Burger Mobile (Flutter APK)      💻 R Burger Web + Admin (React)
        ↓                                    ↓
   Talks to the API directly           Hosted on Vercel
        ↓                                    ↓
                    Amazon EC2 (rburger-ec2)
                    .NET 8 API — systemd service
                         ↓              ↓
                  Amazon RDS      Amazon S3
                  (SQL Server)    (menu images)

🔐 Secrets: Environment Variables on the server
```

<p align="center">
  <!-- Add an architecture diagram here if you have one -->
<img width="1408" height="768" alt="Architecture" src="https://github.com/user-attachments/assets/c6c00a68-06c0-40f1-afe3-56c9a688ef0a" />

</p>

---

## ⚙️ AWS Services Used

| Service | Purpose |
|---|---|
| **Amazon EC2** | Hosts the .NET API (t3.micro) |
| **Amazon RDS (SQL Server)** | Primary relational database |
| **Amazon S3** | Menu item image storage |
| **IAM Roles** | Secure, key-less permissions for the EC2 instance |
| **Security Groups** | Network-level access control |
| **Systems Manager / Environment Variables** | Secrets management (connection strings, JWT keys, payment gateway keys) |
| **CloudWatch** | Basic server monitoring |

---

## 📸 Screenshots

<p align="center">
  <!-- Add 3-4 screenshots: live website, AWS console, API returning real data -->
 <img width="1920" height="768" alt="Screenshot (1088)" src="https://github.com/user-attachments/assets/8712f267-d415-4f81-99da-0733ba1ad995" />
<img width="1601" height="677" alt="monitoring" src="https://github.com/user-attachments/assets/86026894-770f-4798-9abb-fe3450fd6284" />

</p>

---

## 🔗 Links

| | Link |
|---|---|
| 🌐 Website (Web) | https://rb-resturant.vercel.app |
| 🛠️ Admin Dashboard | https://rb-resturant-admin.vercel.app |
| 📦 Backend repository | https://github.com/ahmedsfwt/RBurger-api |

---

## ✅ Current Status

```
✅ EC2 + .NET API running
✅ RDS (SQL Server) connected and seeded with data
✅ S3 for image storage (temporary alternative to CloudFront)
✅ CORS configured for both frontend apps (Web + Admin)
✅ Payment gateway (Paymob) credentials wired up
⏳ CloudFront — on hold until account is fully activated
⏳ HTTPS / a real custom domain
```


---

## 👩‍💻 About This Work

I owned the cloud/infrastructure portion of the R Burger capstone project.

**Duration:** 6 weeks (August 1 – September 15, 2026)
