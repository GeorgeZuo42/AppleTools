on run {input, parameters}
	tell application "Terminal"
		activate
		repeat with f in input
			do script "adb push " & (POSIX path of f) & " /sdcard/Download"
		end repeat
	end tell
end run