# Log Monitor for 500 Errors

This project provides shell scripts to monitor application logs for HTTP `500–599` server errors and send email alerts.

It includes:

1. A **manual one-time check script**
2. A **real-time monitoring script** that batches alerts every 5 minutes

---

## 🚀 Features

* Detects **500-series error codes** in logs (e.g., 500, 502, 503)
* Sends **email alerts** using `mail` or `mailx`
* Supports:

  * **Manual check** (one-time execution)
  * **Real-time monitoring** (continuous execution with batching)

---

## 📂 Scripts

### 1. Manual One-Time Check

monitor.sh
👉 Use this for **manual checks** when you want to scan logs and send alerts once.

---

### 2. Real-Time Monitoring with 5-Minute Batching

real-time-monitor.sh

👉 Use this for **continuous monitoring**.

* Errors are collected into a buffer for 5 minutes.
* One **email per batch** is sent, reducing alert fatigue.

---

## 🛠️ Prerequisites

* Linux environment
* `mail` or `mailx` installed and configured

  ```bash
  sudo apt-get install mailutils   # Debian/Ubuntu
  sudo yum install mailx           # RHEL/CentOS
  ```
* SMTP configured (via `postfix`, `ssmtp`, etc.)

---

## ▶️ Usage

### Manual One-Time Script

```bash
chmod +x alert_500_errors.sh
./alert_500_errors.sh
```

### Real-Time Monitoring Script

```bash
chmod +x monitor_500_errors.sh
./monitor_500_errors.sh
```

Run in background:

```bash
nohup ./monitor_500_errors.sh &
```

---

## 📖 Learning Outcomes

* How to parse logs with `grep`
* Using `tail -F` for real-time monitoring
* Batching alerts to avoid notification spam
* Applying shell scripting for practical DevOps tasks

---

