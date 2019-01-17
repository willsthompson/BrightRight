# BrightRight

BrightRight runs on a schedule using `launchd` and synchronizes your MacBook's display brightness to all other attached displays using `AppleScript`. 

The default synchronization interval is 5 minutes and is configurable by changing the integer value associated with the `StartInterval` key in `com.BrightRight.RunAtInterval.plist`. The integer value is in seconds.

## To install

Clone this repo somewhere on your Mac, and run `install.sh`. You should be prompted by macOS to give assistive access permission to `BrightRightRunner.sh`. After selecting `Allow`, you will still need to browse to `Security & Privacy > Accessibility` in System Preferences, and click the checkbox next to `BrightRightRunner.sh`.

BrightRight installs per-user, and will continue to run every 5 minutes while your computer is awake. It will not interfere with sleep, and will run automatically when the computer wakes. The System Preferences icon will appear in your dock temporarily, while the sychonization occurs, and then disappear.

## To uninstall

Run `uninstall.sh`.