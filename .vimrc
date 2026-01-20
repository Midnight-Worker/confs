call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'vimwiki/vimwiki'
" Markdown Preview (funktioniert in Vim & NeoVim)
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npm install' }
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'

" (optional) besseres Markdown-Syntax
Plug 'plasticboy/vim-markdown'

call plug#end()

nmap <C-n> :NERDTreeToggle<CR> 
nmap <C-s> <Esc>:w<CR>
nmap <C-k> :NERDTreeFocus<CR>
nmap <C-x> <Esc>:x<CR>

:set ts=4
:set autoindent
:set cindent
:set number

"nnoremap <C-s> <Esc>:w<CR>
"nnoremap <F8> <Esc>
inoremap jk <Esc>
inoremap jk <Esc>
inoremap <C-s> <Esc>:w<CR>
nnoremap .. :
nnoremap 77 /
nnoremap ++ ~
nnoremap ßß \
nnoremap 22 "
nnoremap 11 !
inoremap .. :
inoremap 77 /
inoremap ++ ~
inoremap ßß \
inoremap 22 "
inoremap 11 !
nnoremap .. :

cnoremap .. :
cnoremap 77 /
cnoremap ++ ~
cnoremap ßß \
cnoremap 22 "
cnoremap 11 !

nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

let mapleader = " "

let g:vimwiki_list = [{
	\ 'path': '/c/Users/maikt/Desktop/Midnight-Walker/Obsidian/AnMich',
	\ 'syntax': 'markdown',
	\ 'ext': '.md'
	\ }]
let g:vimwiki_list[0].diary_rel_path = '10\ Journal/Daily/'
nnoremap <leader>ts i<C-R>=strftime("%Y-%m-%d %H:%M:%S")<CR><Esc>

function! TimeStamp()
    " 1 = Montag, 7 = Sonntag
    let l:wday_num = str2nr(strftime('%u'))
    let l:wdays    = ['Mo', 'Di', 'Mi', 'Do', 'Fr', 'Sa', 'So']
    let l:wday_str = l:wdays[l:wday_num - 1]

    " Format: yyyy:mm:dd / Mo / hh:mm:ss
    return strftime('%Y:%m:%d') . ' / ' . l:wday_str . strftime(' / %H:%M:%S')
endfunction

" Beispiel: F5 fügt den Timestamp ein
inoremap <leader>ts <C-R>=TimeStamp()<CR>
nnoremap <leader>ts i<C-R>=TimeStamp()<CR><Esc>
