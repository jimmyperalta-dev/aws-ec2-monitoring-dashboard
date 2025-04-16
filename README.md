## 📊 EC2 Metrics Dashboard

![EC2 CloudWatch Dashboard](architecture/ec2-cloudwatch-dashboard.png)

This CloudWatch dashboard was created to visualize real-time EC2 system metrics using the CloudWatch Agent.

### 🔍 Metrics Displayed

- **CPU Usage (Idle %)**
  Tracks available compute capacity to help identify under- or over-utilization.

- **Memory Usage (%)**
  Indicates current RAM usage to support troubleshooting and capacity planning.

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

## 🗺️ Architecture Diagram

![Architecture Diagram](architecture/aws-ec2-monitoring-dashboard-diagram.png)

> 📌 **User** → **Route 53** → **CloudFront** → **EC2 Instance** (Ubuntu) → **Amazon CloudWatch Agent** → **CloudWatch Dashboard + Alarms + SNS**  
> DNS resolution handled via Route 53, enabling HTTPS-secured traffic flow from browser to EC2. CloudWatch Agent runs on the EC2 instance, collects metrics (CPU, memory, disk), and publishes them to CloudWatch for real-time monitoring. Alarms notify via SNS when thresholds are breached.


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
