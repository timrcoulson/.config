defaults write com.apple.dock persistent-apps -array
APPS=( Ableton\ Live\ 10\ Standard.app Slack.app Google\ Chrome.app 1Password\ 7.app GoLand.app IntelliJ\ IDEA.app iTerm.app Spotify.app Notes.app)

for i in "${APPS[@]}"
do
  echo "Adding $i to dock"
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$i</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done
killall Dock;


