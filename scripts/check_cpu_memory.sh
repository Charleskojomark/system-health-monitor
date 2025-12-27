#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

source "$SCRIPT_DIR/logging.sh"

check_cpu_memory() {
    local cpu_usage
    cpu_usage=$(top -bn1 | awk '/Cpu/ {printf "%.2f", 100 - $8}')
    local mem_usage
    mem_usage=$(free | awk '/Mem:/ {printf "%.2f", $3/$2 * 100}')

    log "CPU usage: ${cpu_usage}%"
    log "Memory usage: ${mem_usage}%"
}
