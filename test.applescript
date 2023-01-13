set testname to "12   This is the Track    "

set trimmed to texts without whitespace of testname

set Wordlist to words of trimmed
set trackNumber to first word of WordList

return trackNumber
return trimmed
