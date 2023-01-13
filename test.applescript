(*
A sub-routine for trimming unwanted characters from strings.
Taken from http://www.macosxautomation.com
*)
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

set testname to "12   This is the Track    "

set trimmed to trim_line(testname, " ",2)

set wordlist to words of trimmed
set tracknumber to first of wordlist

return tracknumber