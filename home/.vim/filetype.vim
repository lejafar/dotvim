if exists("did_load_filetypes")
  finish
endif

augroup filetypedetect
  au! BufRead,BufNewFile *.coffee setfiletype coffee
  au! BufRead,BufNewFile *.brs setfiletype vb
  au! BufRead,BufNewFile *.py set nosmartindent
augroup END
