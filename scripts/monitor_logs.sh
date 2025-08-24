#!/bin/bash
# monitor_logs.sh

LOG_FILE=~/devops_workspace/devops_project_monitoring/logs/app.log


echo "Monitoring logs from $LOG_FILE ..."
echo "Press CTRL+C to stop."

# Highlight ERROR, WARN, INFO with colors
tail -f $LOG_FILE | grep --color=auto -E "ERROR|WARN|INFO"

