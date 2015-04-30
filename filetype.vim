" my filetype file

if exists("did_load_filetyps")
	finish
endif
augroup filetypedetect

	au! BufRead,BufNewFile *.b setfiletype limbo 

	au! BufRead,BufNewFile *.m setfiletype limbo 
augroup END
