#!/bin/bash

WORK_DIR=/u/juliano/jenkins/notify/weekly
LOG_FILE="$WORK_DIR/jenkins.log"
SCRIPT="notify-n-escalate.pl"
CFG="notify.8DA-org.every-week.cfg"
#SCRIPT_ARGS="-cfg $WORK_DIR/$CFG -d 1 -v 2 -batch -nomail"
SCRIPT_ARGS="-cfg $WORK_DIR/$CFG -d 1 -v 2 -batch -nomail"

echo "-I- cd $WORK_DIR && pwd -P"
cd $WORK_DIR && pwd -P

# echo "${SSHCMD} $RHOST -l juliano -t '$SETUP_ENV; $MODULE_ENV ; cd $WORK_DIR;  $SCRIPT $SCRIPT_ARGS'"
echo "-I- Saving run LOG, input CFG, and 'jira.summary.xlsx' for future reference..."
echo "   cp -p --backup=numbered jira.summary.xlsx jira.summary.xlsx.bkup"
cp -p --backup=numbered jira.summary.xlsx jira.summary.xlsx.bkup

echo "   cp -p --backup=numbered notify.8DA-org.every-week.cfg notify.8DA-org.every-week.cfg.bkup" 
cp -p --backup=numbered notify.8DA-org.every-week.cfg notify.8DA-org.every-week.cfg.bkup

echo "   cp -p --backup=numbered $LOG_FILE $LOG_FILE.bkup"
cp -p --backup=numbered  $LOG_FILE $LOG_FILE.bkup

echo "-I- Removing results from previous runs that can introduce unwanted results in this situation..."
echo "   rm $LOG_FILE psql.orgdata.txt jira.*.xml jira.*.xlsx href*.txt"
/bin/rm -fv $LOG_FILE psql.orgdata.txt jira.*.xml jira.*.xlsx href*.txt

source /global/etc/sh.bashrc
source /remote/cad-rep/etc/.bashrc

module unload msip_shell_notify
module   load msip_shell_notify

# $SCRIPT $SCRIPT_ARGS
echo "$SCRIPT $SCRIPT_ARGS &>> $LOG_FILE"
echo "$SCRIPT $SCRIPT_ARGS " &>> $LOG_FILE
$SCRIPT $SCRIPT_ARGS &>> $LOG_FILE

# /u/juliano/jenkins/notify/notify-n-escalate.wrapper.sh
