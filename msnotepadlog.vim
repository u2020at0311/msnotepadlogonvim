function! MSNotepadLog()
  if (getline(1)  =~ '^\.LOG$')
    let failed = append( line("$"), [ substitute( system(' LC_ALL=C date +"%H:%M %Y/%m/%d" '), "\n", " ",
    let failed = cursor(line("$"), 0)
    echo "A timestamp has been added the end of the file."
  endif
endfunction
autocmd BufReadPost * call MSNotepadLog()
