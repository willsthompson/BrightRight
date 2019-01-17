#!/bin/sh
source constants.sh

# Unoad launchd task
launchctl unload -w $PLIST_OUT_NAME

# Clean up files
rm "$LAUNCH_AGENTS_PATH$PLIST_OUT_NAME"
rm $SCRIPTS_PATH/*
rmdir $SCRIPTS_PATH