tell application "Finder"
	set theWin to window 1
	set thePath to (POSIX path of (target of theWin as alias))
end tell

tell application "iTerm"
	activate
	tell current session of current window
		write text "cd " & thePath
	end tell
end tell