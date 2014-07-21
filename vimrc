call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'junegunn/vim-easy-align'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-sensible'
Plug 'https://github.com/bling/vim-airline'
Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'git@github.com:editorconfig/editorconfig-vim.git'
Plug 'git@github.com:mattn/emmet-vim.git'
Plug 'git://github.com/digitaltoad/vim-jade.git'
Plug 'git@github.com:wavded/vim-stylus.git'
Plug 'git@github.com:ervandew/supertab.git'
Plug 'git@github.com:mhinz/vim-startify.git'
Plug 'git@github.com:tpope/vim-characterize.git'
Plug 'git@github.com:zenorocha/dracula-theme.git'
Plug 'git@github.com:Lokaltog/vim-easymotion.git'
Plug 'git@github.com:tpope/vim-eunuch.git'
Plug 'git@github.com:Shougo/vimproc.vim.git'
Plug 'git@github.com:Shougo/vimshell.vim.git'
Plug 'git@github.com:glts/vim-cottidie.git'
call plug#end()

syntax enable
filetype indent plugin on
set background=dark
set smartindent
set cindent
set ruler
set showcmd
set number
set expandtab
set cursorline
set matchtime=1
set showmatch
set tabstop=4
set shiftwidth=4
set t_Co=256
set rtp+=/usr/local/Cellar/fzf/0.8.5
set cmdheight=2

"""""" easy motion config """"""
" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
"""""" end """"""

" config smarttab for emmet
function! s:zen_html_tab()
  let line = getline('.')
  " let lineLength=${#line}
  " if lineLength < 1
    " return "\<Tab>"
  if match(line, '<.*>') >= 0
    return "\<Tab>"
  endif
  return "\<c-y>,"
endfunction
autocmd FileType html imap <buffer><expr><tab> <sid>zen_html_tab()
let g:startify_custom_header = [
                \'        ᕙ(`▽´)ᕗ  ٩(^‿^)۶',
                \'',
                \'',
                \ ]

autocmd VimEnter * nested CottidieTip

" let g:user_emmet_expandabbr_key = '<Tab>'
" tabstop, shiftwidth, softtabstop
