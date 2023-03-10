#!/bin/tcsh

# ENVIRONMENT VARIABLES TO CONTROL OUR TOOLS
#
# DDR_DA_MAIN             path-to-ddr-ckt-rel-main folder
#   alphaHLDepotSeed
# DDR_DA_TIMEBOMB_FILE    filename
# DDR_DA_SKIP_USAGE       anything
#   Misc.pm: utils__script_usage_statistics
#   run-tests_alphaHLDepotBehaveRelease.pl
#   run-tests_alphaHLDepotPhyvRelease.pl
#   run-tests_pin_check__ckt_specs.pl
# DDR_DA_TESTING anything    
#   alphaHLDepotPhyvRelease 
#   alphaDepotRelChecker.pl 
# DDR_DA_DEFAULT_P4WS     p4_ws|p4_nightly_runs|p4_func_tests
# DA_TEST_NOGUI           anything
# DDR_DA_COVERAGE anything
# DDR_DA_COVERAGE_DB /path/cover_db
#   alphaHLDepotRelease.pm

# Set the timezone to EST
set TZ=EST

# This env var is a way to override the default filename used to disable
# scripts using the same version mentioned in it.
# setenv DDR_DA_TIMEBOMB_FILE 'somefile'

# DDR_DA_DEFAULT_P4WS tells our testing scripts to use this as the p4_ws
# instead of the default ~/p4_ws
setenv DDR_DA_DEFAULT_P4WS p4_nightly_runs

# The setting of this env DDR_DA_SKIP_USAGE tells the Misc.pm's 
# subroutine that issues the Kibana usage call to skip it and just
# return without doing anything.
setenv DDR_DA_SKIP_USAGE 1

setenv DDR_DA_TESTING 1
setenv P4CLIENT msip_cd_ljames_nightly_runs
if ( ! $?P4PORT ) then
    setenv P4PORT 'p4p-us01:1999'
endif

set BRMAIN = main 
set list_of_failures = ""

# Tell this script where to dump the html files

set HTMLDIR = /u/ljames/public_html/nightly_run
echo "HTML files will get written to $HTMLDIR"

set TEMPDIR=/tmp

if ( ! -e $TEMPDIR ) then
    echo "Your machine does not appear to have a /tmp/ area!!!"
    exit -1
endif

set tempdir=${TEMPDIR}/${USER}
if ( ! -e $tempdir ) then
    mkdir -p $tempdir/tests_output
    if ( ! -d $tempdir ) then
        echo "nightly_runs.csh FAILED to create the $tempdir/tests_output folder!"
        exit -1
    endif
endif
echo "Some of the logs generated by this script get written to ${tempdir}"


# Running all the tests will leave unique numbered log files behind
# So to prevent running out of disk space, let us clean up the logs in
# /tmp everytime we run this
rm -f /tmp/*log* /tmp/warnings* /tmp/errors* /tmp/*stdout* /tmp/*stderr* /tmp/random-file-test-* /tmp/countDirtysAndWarnings*
rm -Rf /tmp/alphaPincheck.*${USER}_gunzip* >& /dev/null
rm -Rf /tmp/hsperfdata_${USER}/ >& /dev/null
rm -Rf /tmp/alphaGdsPrep_dwc_*${USER}_* >& /dev/null
rm -Rf /tmp/python_run_system_cmd* >& /dev/null
rm -Rf /tmp/${USER}/tests_output/* >& /dev/null

# Do some cleanup work in the nightly run folder too
find $HTMLDIR -maxdepth 1 -name "*.log" -type f -mtime 2 -delete

set savelogDir=$tempdir
set savelog=$tempdir/run_all_gitlab_tests_$$.log

# nightly_runs.csh currently defaults such that the gitlab folder 
# is /tmp/${USER}/gitlab and in here you would find the 
# ddr-hbm-phy-automation-team/... tree
set gitlab=$tempdir/gitlab

#
# This script takes one optional argument, it's to override the default
# gitlab base directory 'gitlab' variable
#
if ( $#argv > 0 ) then
    set gitlab = $argv[1]
endif

echo "<style>"                        > $savelog
echo "b.failed {"                    >> $savelog
echo "   color:hsl(0, 100%, 50%);"   >> $savelog
echo "}"                             >> $savelog
echo "b.passed {"                    >> $savelog
echo "   color:hsl(120, 100%, 39%);" >> $savelog
echo "}"                             >> $savelog
echo "</style>"                      >> $savelog
echo "<pre>"                         >> $savelog
set TZ=EST
echo "On system: $HOST" >> $savelog
/bin/date +"%c" >> $savelog
pwd >> $savelog

#
# Create a new clone to run tests in (if one isn't already there)
#
if ( ! -e $gitlab ) then
    mkdir -p $gitlab
    cd $gitlab
    git clone git@snpsgit.internal.synopsys.com:ddr-hbm/ddr-hbm-phy-automation-team.git
    cd ddr-hbm-phy-automation-team
    git config pull.rebase false
else
    cd $gitlab/
    cd ddr-hbm-phy-automation-team
    git checkout $BRMAIN 
    git pull origin $BRMAIN |& tee $HOME/nightly_git_pull.log
    if ( "$gitlab" == "$tempdir/gitlab" ) then
        git clean -xf
    endif
endif

setenv GITROOT $gitlab/ddr-hbm-phy-automation-team
set admin = $GITROOT/admin

echo "Running the run_before_checkin.csh script"
echo "Saving results to $savelog"

# ===================================================================
# Now run all the tests
# ===================================================================
./run_before_checkin.csh                    >>& $savelog
/bin/date +"%c"                             >>& $savelog
echo "$HOST"                                >>  $savelog
echo "</pre>"                               >>  $savelog

# Erase all of the old log files
if ( -e $HTMLDIR ) then
    rm -f $HTMLDIR/ljames*log*
    rm -f $HTMLDIR/${USER}*log*
endif


# See how many FAILED we find
echo "Gather up a list of failures from $savelog"
set list_of_failures = `${admin}/list_failed.pl $savelog`
# modify the results by adding some color
echo "Modifying '$savelog' to add some color to FAILED or PASSED strings"
perl -i.old -p -e 's/FAILED/<b class=\"failed\">FAILED<\/b>/g' $savelog
perl -i.old -p -e 's/PASSED/<b class=\"passed\">PASSED<\/b>/g' $savelog
perl -i.old -p -e 's/(Running.*)$/<h2>$1<\/h2>/g' $savelog
# now remove the old files, not really needed
rm -f $savelogDir/*.old

#
echo "copy $savelog to $HTMLDIR/index.html"
cp -f $savelog $HTMLDIR/index.html

# Modify index.html by copying any temp files to nightly_run/ and change
# See /tmp/ljames_* for details to a URL link to the file that was copied to
# nightly_run/ folder
echo "post_process_nightly_run_log.pl $HTMLDIR/index.html  now running"
${admin}/post_process_nightly_run_log.pl $HTMLDIR/index.html

set email_log = "/tmp/nightly_build_log_$$"
if ( -e $email_log ) then
    \rm $email_log
endif

CODE_COVERAGE:

# remove sharedlib_cover_db and all tool_cover_db if present
if ( -e $GITROOT/sharedlib_cover_db ) then
    rm -Rf $GITROOT/sharedlib_cover_db
endif

# Run Code Coverage for sharedlib
#cd ~ljames/cronjobs
setenv DDR_DA_COVERAGE 1
setenv DDR_DA_COVERAGE_DB $GITROOT/sharedlib_cover_db
${admin}/update_sharedlib_coverage.csh $gitlab

#
# Now run CODE COVERAGE for all tools
#
#cd ~ljames/cronjobs
set tools = (ddr-ckt-rel ddr-utils ddr-utils-lay ddr-utils-timing ddr-utils-in08 ibis )
foreach tool ($tools)
    if ( -e "${admin}/update_tool_coverage.csh" ) then
        set coverage_log = $tempdir/${tool}_coverage_$$.log
        if ( -e ${GITROOT}/${tool}_cover_db ) then
            rm -Rf ${GITROOT}/${tool}_cover_db
        endif
        #
        # Start with sharedlib coverage data
        #
        if ( -e $GITROOT/sharedlib_cover_db ) then
            cp -Rf ${GITROOT}/sharedlib_cover_db ${GITROOT}/${tool}_cover_db
        endif
        setenv DDR_DA_COVERAGE_DB ${GITROOT}/${tool}_cover_db
        setenv DDR_DA_COVERAGE 1
        ${admin}/update_tool_coverage.csh $tool $coverage_log $gitlab &
    else
        echo "Did not find script named update_tool_coverage.csh"
    endif
end

# wait for above background processes to complete
wait

foreach tool ($tools)
    if ( -e $coverage_log ) then
        \rm -f $coverage_log
    endif
end

set team_email = "ljames@synopsys.com juliano@synopsys.com seguinn@synopsys.com alvaro@synopsys.com dikshant@synopsys.com"
touch $email_log
set have_sendmail=`where sendmail`
if ( "$have_sendmail" == "" ) then
    echo "Nightly Build Results                            " >> $email_log
    echo "                                                 " >> $email_log
    echo "Link: https://lamp/~ljames/nightly_run/index.html" >> $email_log
    if ( "$list_of_failures" != "" ) then
    echo "                                                "
    echo "Failures in: $list_of_failures      " >> $email_log    
    endif
    echo "                                                " >> $email_log
    echo "Nightly Coverage                                " >> $email_log
    echo "                                                " >> $email_log
    echo "Link: https://lamp/~ljames/coverage/index.html  " >> $email_log
    echo "                                                " >> $email_log
    echo "                                                " >> $email_log
else
    echo "<h1>Nightly Build Results</h1>"                   >> $email_log
    echo "<p>                                             " >> $email_log
    echo "Link: https://lamp/~ljames/nightly_run/index.html<br>" >> $email_log
    if ( "$list_of_failures" != "" ) then
    echo "<p>Failures in: $list_of_failures               " >> $email_log    
    endif
    echo "<p>                                             " >> $email_log
    echo "<h1>Nightly Coverage</h1>                       " >> $email_log
    echo "<p>                                             " >> $email_log
    echo "Link: https://lamp/~ljames/coverage/index.html<br>" >> $email_log
    echo "<br>                                            " >> $email_log
    echo "<br>                                            " >> $email_log
endif

echo "Trying to email $email_log to $team_email"

# By setting this env variable, it will cause the nightly run to only
# send email to ljames :  does this for debugging this script from time
# to time.
if ( $?JAMES_TEST_NIGHTLY ) then
    set team_email = "ljames@synopsys.com"
endif

if ( "$have_sendmail" == "" ) then
    mailx -s'Nightly Build and Coverage Results' $team_email  < $email_log
    sleep 2 
else
    set HEAD=/tmp/email_head$$
    set TAIL=/tmp/email_tail$$
    set MSG=/tmp/email_msg$$

    if ( -e $HEAD ) then
        rm $HEAD
        touch $HEAD
    endif
    if ( -e $TAIL ) then
        rm $TAIL
        touch $TAIL
    endif
    if ( -e $MSG ) then
        rm $MSG
        touch $MSG
    endif


    echo "From: $USER\@synopsys.com"  > $HEAD
    echo "To: $team_email "          >> $HEAD
    echo "MIME-Version: 1.0"         >> $HEAD
    echo "Content-Type: multipart/alternative; " >> $HEAD
    echo ' boundary="some.unique.value.ABC123/server.xyz.com"' >> $HEAD
    echo "Subject: Nightly Build and Coverage Results"         >> $HEAD
    echo ""                                 >> $HEAD
    echo "This is a MIME-encapsulated message" >> $HEAD
    echo ""                                 >> $HEAD
    echo '--some.unique.value.ABC123/server.xyz.com' >> $HEAD
    echo "Content-Type: text/html"              >> $HEAD
    echo "<\!DOCTYPE HTML>"                     >> $HEAD
    echo "<html> <head>"                        >> $HEAD
    echo "<title>TEST HTML E-Mail</title>"      >> $HEAD
    echo "</head><body>"                        >> $HEAD
    # BODY is in $email_log
    echo "</body></html>" > $TAIL
    echo "------some.unique.value.ABC123/server.xyz.com--" >> $TAIL
    cat $HEAD $email_log $TAIL > $MSG
    cat $MSG | sendmail -t
    sleep 2 
    rm -f $HEAD $TAIL $MSG
endif


if ( -e $email_log ) then
    \rm -f $email_log
endif

echo "nightly_runs.csh is now done"

# because some of the tests might have created files with the wrong group
# permissions, lets force chmod -R g+w 
if ( -e $HOME/$DDR_DA_DEFAULT_P4WS ) then
    cd $HOME/$DDR_DA_DEFAULT_P4WS 
    chmod -R g+w  .
endif

exit 0

