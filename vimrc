let &guioptions = substitute(&guioptions, "t", "", "g")
if &t_Co > 2 || has("gui_running")
"	let loaded_matchparen = 1
	syntax on
	set hlsearch
	set go+=g
	set go-=t
	set go-=T
endif

if has("autocmd")
	fun! BigSave()
		w
		if &ft == 'tex'
			!pdflatex -halt-on-error '%'
			if !v:shell_error
				call feedkeys("\<CR>")
			endif
		elseif &ft == 'python'
			!./'%'
			if !v:shell_error
				call feedkeys("\<CR>")
			endif
		endif
	endfun

	filetype plugin indent on
	map <F5> :call BigSave()<CR>
	imap <F5> <C-O>:call BigSave()<CR>
else
	set autoindent
endif

set autochdir
set autowrite
set nobackup
set noswapfile
set nowritebackup
set showcmd
set tabstop=8
set whichwrap+=<,>,[,]
