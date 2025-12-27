#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"



source "$SCRIPT_DIR/logging.sh"

source "$SCRIPT_DIR/check_failed_logins.sh"
source "$SCRIPT_DIR/check_disk_usage.sh"
source "$SCRIPT_DIR/check_cpu_memory.sh"

log "==== Daily System Health Report ===="
check_failed_logins
check_disk_usage
check_cpu_memory
log "==== End of Report ===="
