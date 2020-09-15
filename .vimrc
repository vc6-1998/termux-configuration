filetype on
set nu
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}
set statusline=[%F]%y%r%m%*%=[共%L行][坐标:%l,%c,%p%%]
set laststatus=2
set smartindent
set showmatch
imap <F5> <ESC> :call Run()<CR>
map <F5> :call Run()<CR>
func! Run()
	exec "w!"
	if &filetype == 'c'
		exec "!clang % -o %<.exe && ./%<.exe"
	elseif &filetype == 'cpp'
		exec "!clang++ % -o %<.exe && ./%<.exe"
	endif
endfunc
inoremap { {}<ESC>i
inoremap ( ()<ESC>i
inoremap < <><ESC>i
inoremap [ []<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
imap <C-A> <ESC>ggVG
map <C-A> <ESC>ggVG
map <C-c> y
map <C-X> yd
imap <C-V> <ESC>pi
map <C-V> p
set clipboard=unnamed	
set tabstop=4
set softtabstop=4
set shiftwidth=4
set nobackup
set noswapfile

