mkdir ~/Library/Scripts/BrightRight/
cp BrightRight.scpt ~/Library/Scripts/BrightRight/
cp BrightRightRunner.sh ~/Library/Scripts/BrightRight/
chmod +x ~/Library/Scripts/BrightRight/BrightRightRunner.sh
cp com.BrightRight.RunAtInterval.plist ~/Library/LaunchAgents/

launchctl load -w ~/Library/LaunchAgents/com.BrightRight.RunAtInterval.plist
launchctl start com.BrightRight.RunAtInterval