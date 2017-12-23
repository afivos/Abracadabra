display dialog "Show hidden files?" with title "Abracadabra" buttons {"Yes", "No"}
set result to button returned of result
if result is equal to "Yes" then
	do shell script "defaults write com.apple.finder AppleShowAllFiles YES"
else
	do shell script "defaults write com.apple.finder AppleShowAllFiles NO"
end if
do shell script "killall -KILL Finder"