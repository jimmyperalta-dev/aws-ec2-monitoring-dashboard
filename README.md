# 📊 EC2 Monitoring Dashboard on AWS (CloudWatch + SNS)

🔗 **Live Monitoring Console:** [AWS CloudWatch Dashboard](https://console.aws.amazon.com/cloudwatch)

This project sets up real-time monitoring of a public EC2 instance using Amazon CloudWatch Agent and a custom dashboard. Key system metrics such as CPU, memory, and disk usage are tracked, visualized, and alerted on via SNS notifications. The deployment was completed manually to provide full visibility and control over the setup process.

---

## ✅ Highlights

- 💻 **Amazon EC2** – Monitored instance running Ubuntu 22.04
- 📈 **CloudWatch Agent** – Collects system-level metrics from EC2
- 📊 **CloudWatch Dashboard** – Visualizes performance in real time
- 🚨 **SNS Alarms** – Sends email alerts for critical resource thresholds
- 🛠 **Manual Configuration** – Provides hands-on experience with agent setup
- 🧠 **SSM IAM Role** – Grants secure CloudWatch integration via EC2 instance profile

---

## 📁 Project Structure

```bash
aws-ec2-monitoring-dashboard/
├── architecture/                       # AWS architecture diagram
├── scripts/                            # Manual installation scripts
├── README.md                           # Project documentation
```

---

## 🗺️ Architecture Overview

📌 *Diagram placeholder (insert in `/architecture/` folder and link below once finalized)*

![Architecture Diagram](architecture/aws-ec2-monitoring-dashboard.png)

---

## 🛠 Deployment Summary

1. Launched Ubuntu EC2 instance in the free tier with a public IP
2. Attached an IAM role with CloudWatchAgentServerPolicy
3. Installed and configured the CloudWatch Agent to track:
   - CPU usage
   - Memory usage
   - Disk usage (used% and inodes)
4. Confirmed metrics were reporting to CloudWatch namespace `CWAgent`
5. Built a CloudWatch Dashboard visualizing real-time metrics
6. Created CPU-based alarm and configured SNS email notifications
7. Verified functionality and email delivery via alarm trigger test

---

## 🧠 Skills Demonstrated

- EC2 instance provisioning and access via SSH
- IAM role assignment and permission troubleshooting
- CloudWatch Agent installation and JSON-based configuration
- Log and metric validation via terminal and console
- Alarm setup using metric thresholds and SNS integration
- Dashboard customization in AWS CloudWatch

---

## 👤 Author

**Jimmy Peralta**  
🛠️ Systems Support Engineer | ☁️ AWS Cloud Enthusiast  
🌐 [https://www.deployjimmy.com](https://www.deployjimmy.com)
