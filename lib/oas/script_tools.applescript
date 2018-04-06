on app_exists(appname)
  set appID to id of application appname
  exists application id appID
end app_exists

on which(app_name)
  set the_app to app_name

  tell application "Terminal"

    if not (exists window 1) then
      reopen
    end if

    do script with command "which " & app_name & " | /usr/bin/awk '{ print " & "\"RESULT:\"" & " $1}'"

    delay 0.5

    set the_content to (contents of window 1) as string
    set n to (count of every paragraph of the_content)

    close window 1
  end tell

  repeat with i from 1 to n
    try
      set test_str to (characters 1 thru 7 of paragraph i of the_content) as string
      log test_str
      if test_str is equal to "RESULT:" then
        set this_line to paragraph i of the_content as string
        set the_app to trim_line(this_line, test_str, 0)
      end if
    on error err_str number err_number
    -- log err_str & "[" & err_number & "]"
    end try
  end repeat

  return the_app
end which

on trim_line(this_text, trim_chars, trim_indicator)
-- 0 = beginning, 1 = end, 2 = both
  set x to the length of the trim_chars
  -- TRIM BEGINNING
  if the trim_indicator is in {0, 2} then
    repeat while this_text begins with the trim_chars
      try
        set this_text to characters (x + 1) thru -1 of this_text as string
      on error
      -- the text contains nothing but the trim characters
        return ""
      end try
    end repeat
  end if
  -- TRIM ENDING
  if the trim_indicator is in {1, 2} then
    repeat while this_text ends with the trim_chars
      try
        set this_text to characters 1 thru -(x + 1) of this_text as string
      on error
      -- the text contains nothing but the trim characters
        return ""
      end try
    end repeat
  end if
  return this_text
end trim_line

on write_to_file(this_data, target_file, append_data) -- (string, file path as string, boolean)
  try
    set the target_file to the target_file as text
    set the open_target_file to ¬
			open for access file target_file with write permission
    if append_data is false then ¬
			set eof of the open_target_file to 0
    write this_data to the open_target_file starting at eof
    close access the open_target_file
    return true
  on error
    try
      close access file target_file
    end try
    return false
  end try
end write_to_file

on file_exists(theFile) -- (String) as Boolean
  tell application "System Events"
    if exists file theFile then
      return true
    else
      return false
    end if
  end tell
end file_exists