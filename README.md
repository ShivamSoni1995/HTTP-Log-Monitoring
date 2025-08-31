Perfect ✅ since we’re only considering the **manual one-time check** version of the script, here’s a neat **README.md** draft you can use in your GitHub repo:

---

# Log Monitor for 500 Errors

This project contains a simple **shell script** that scans a log file for HTTP `500–599` server errors and sends an alert email if such errors are detected.

## 🚀 Features

* Reads a given log file
* Detects **500-series error codes** (e.g., 500, 502, 503)
* Sends an **email notification** if errors are found
* Lightweight and beginner-friendly



## 🛠️ Prerequisites

* A Linux environment

* `mail` or `mailx` installed and configured

  ```bash
  # Debian/Ubuntu
  sudo apt-get install mailutils  

  # RHEL/CentOS
  sudo yum install mailx
  ```

* SMTP configured (via `postfix`, `ssmtp`, etc.)

## ▶️ Usage

1. Clone the repo or copy the script.
2. Make the script executable:

   ```bash
   chmod +x alert_500_errors.sh
   ```
3. Run the script manually:

   ```bash
   ./monitor.sh
   ```
4. If 500-series errors are detected, you’ll receive an **email alert**.

## ⚠️ Notes

* This script is designed for **manual one-time checks**.
* For continuous monitoring, consider tools like `tail -F` with `systemd` or scheduling with `cron`.

## 📖 Learning Outcome

This script is a great starting point for understanding:

* Log parsing with `grep`
* Automating alerting with shell scripts
* The importance of monitoring in DevOps

---

