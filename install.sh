#!/bin/sh
source constants.sh

# Build plist XML with user home path
# (Log launchd output by adding a debug path param,
# i.e.: -stringparam debug-path ~/Desktop) 
xsltproc -stringparam script-path $RUNNER_LOCATION $XSLT_NAME $PLIST_IN_NAME > $PLIST_OUT_NAME

# Copy files
mkdir $SCRIPTS_PATH
cp BrightRight.scpt $SCRIPTS_PATH
cp BrightRightRunner.sh $SCRIPTS_PATH
chmod +x $RUNNER_LOCATION
cp $PLIST_OUT_NAME $LAUNCH_AGENTS_PATH

# Load launchd task
launchctl load -w "$LAUNCH_AGENTS_PATH$PLIST_OUT_NAME"
launchctl start com.BrightRight.RunAtInterval