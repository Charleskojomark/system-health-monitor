#!/bin/bash

set -euo pipefail

LOG_DIR="$SCRIPT_DIR/../logs"
LOGFILE="$LOG_DIR/daily_report_$(date +%Y-%m-%d).log"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$LOG_DIR"

log (){
    printf "[%s] %s\n" "$(date +%F%T)" "$1" | tee -a "$LOGFILE"
}
