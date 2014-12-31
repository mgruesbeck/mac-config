if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.hbt,*.handlebars setf mustache
augroup END
