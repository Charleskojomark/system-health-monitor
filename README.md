# System Health Monitoring Scripts

This project contains Bash scripts that generate a daily system health report.
The report includes CPU usage, memory usage, disk usage, and failed login attempts.

Logs are written to a daily log file with timestamps.

## Files

- `daily_report.sh`  
  Runs all checks and generates the daily system health report.

- `logging.sh`  
  Handles timestamped logging and creates daily log files.

- `check_cpu_memory.sh`  
  Checks and logs CPU and memory usage.

- `check_disk_usage.sh`  
  Checks disk usage on `/` and reports if usage exceeds a set threshold.

- `check_failed_logins.sh`  
  Scans `/var/log/auth.log` for failed login attempts.

- `failed_pattern.txt`  
  Contains patterns used to detect failed authentication attempts.

## Usage

Make the scripts executable:
```bash
chmod +x *.sh
````

Run the daily report:

```bash
./daily_report.sh
```

Logs will be saved in the `logs/` directory.

## Notes

* Reading `/var/log/auth.log` may require sudo permissions.
* Disk usage threshold can be adjusted in `check_disk_usage.sh`.

