"inoremap [ []<ESC>i
"inoremap ( ()<ESC>i
"inoremap () ()<ESC>a
"inoremap (" ("")<ESC>hi
"inoremap ") <ESC>:call CloseParens()<CR>a
"inoremap /* /**/<ESC>hi
"inoremap */ <ESC>:call CloseCComment()<CR>a
map <F4> :set nohls!<CR>:set nohls?<CR>

"Set vert/horz window resize
map + <C-W>+
map - <C-W>-
map ( <C-W><
map ) <C-W>>

" Set tabstop and shiftwidth together
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set nu

" Backspace over everything
set backspace=indent,eol,start

" Visual Tabs hack
set lcs=tab:\|\ 
set nolist
map    <F7>      :set list!<CR>

noremap ;; :syntax off<Enter>
syntax on
set incsearch
"set patchmode=.orig
autocmd FileType c,cpp set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
set formatoptions=l
set ai

"function! CloseParens()
"	if getline('.') =~ "(\".*\")"
"		execute ":normal $"
"	endif
"endfunction

function! CloseCComment()
	if getline('.') =~ "/\\*.*\\*/"
		execute ":normal $"
	endif
endfunction

function! CxxComment()
	if getline('.') =~ "^//"
		execute ":s_^//\\(.*\\)$_\\1_" 
	else
		execute ":s_^\\(.*\\)$_//&_" 
	endif
endfunction

set pastetoggle=<F10>

set mouse=a

set nowrap

au! BufRead,BufNewFile *.haml setfiletype haml
au! BufRead,BufNewFile *.citrus setfiletype citrus

nnoremap <C-N> :next<Enter>
nnoremap <C-P> :prev<Enter>

au BufRead *sup.* set ft=mail
autocmd FileType mail set textwidth=77 formatoptions=ta

set confirm
