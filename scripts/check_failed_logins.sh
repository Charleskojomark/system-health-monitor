#!/bin/bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/logging.sh"

auth_log="/var/log/auth.log"
failed_pattern="$SCRIPT_DIR/../failed_pattern.txt"


check_failed_logins() {

    if [ ! -f "$auth_log" ]; then
        log "Auth Log not found"
        return 1
    fi

    grep -Eif "$failed_pattern" "$auth_log" 
    local count
    count=$(grep -cEif "$failed_pattern" "$auth_log")
    log "Number of failed logins: $count"
}
