#!bin/bash

#path to log file
LOG_FILE="server.log"

if [[ ! -f $LOG_FILE ]]
then
  echo "The file $LOG_FILE is not exist."
  exit 1
else
  #Parse file and extract ip address  with status 200
  echo "Successful logins (IP addresses):"
  grep '200'  "$LOG_FILE" | awk '{print $5}' | cut -d '=' -f2

  #Parse file anf extract unique usernames with status 403
  echo "Users with failed logins:"
  grep '403' "$LOG_FILE" | awk '{print $4}' | cut -d '=' -f2 | sort | uniq
fi

