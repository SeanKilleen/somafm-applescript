set testname to "12   This is the Track    "

set trimmed to trim_line(testname, " ", 2)
set Wordlist to words of trimmed
set trackNumber to first word of WordList

return trackNumber