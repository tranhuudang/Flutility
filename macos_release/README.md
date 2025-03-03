-- Command to build DMG
appdmg ./config.json ./flutility.dmg


-- First time install:
- Required: NodeJS
-- Command:
- flutter build macos --release
- brew install node
- npm install -g appdmg
- appdmg ./config.json ./flutility.dmg

For more info:
https://blog.stackademic.com/generating-dmg-files-with-flutter-packaging-for-macos-like-a-pro-335bc884d233