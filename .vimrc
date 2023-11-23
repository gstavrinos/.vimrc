" Tabs and spaces:
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" ---

" Required by vimwiki
set nocompatible
syntax on

" Leader
let mapleader="\<Space>"
" ---

" UI
set number
set showcmd
set cursorcolumn
set cursorline
set wildmenu
set lazyredraw
set showmatch
set fillchars+=vert:┃
" ---

" Plugins
call plug#begin()

" Plug 'nathanaelkane/vim-indent-guides'
Plug 'sainnhe/gruvbox-material'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clangd-completer' }
Plug 'Yggdroot/indentLine'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'rust-lang/rust.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/syntastic'
Plug 'dense-analysis/ale'
Plug 'luochen1990/rainbow'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'vimwiki/vimwiki'

call plug#end()
" ---

" Indent-guides 
" let g:indent_guides_enable_on_vim_startup = 1
" ---

" IndentLine
let g:indentLine_char = '┊'
let g:indentLine_leadingSpaceChar='·'
let g:indentLine_leadingSpaceEnabled='1'
" ---

" NERD Tree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" ---

" NERD Commenter
let g:NERDSpaceDelims = 1
let g:NERDToggleCheckAllLines = 1
let g:NERDTrimTrailingWhitespace = 1
"

" Syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" let g:syntastic_cpp_checkers=['gcc']
" let g:syntastic_cpp_check_header = 1
" let g:syntastic_cpp_auto_refresh_includes = 1
" let g:syntastic_debug = 1
" ---

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
" ---

" Terminal Colours
set termguicolors
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
let g:airline_theme = 'gruvbox_material'
" ---

" Rainbow
let g:rainbow_active = 1
" ---

" vimwiki
let g:vimwiki_list = [{"path": "~/gst-vimwiki", "path_html": "~/gst-vimwiki/html"}]
" ---

" Extra, no plugin dependent
au BufNewFile,BufRead *.xacro set filetype=xml
au BufNewFile,BufRead *.urdf set filetype=xml
au BufNewFile,BufRead *.world set filetype=xml
au BufNewFile,BufRead *.sdf set filetype=xml
au BufNewFile,BufRead *.cfg set filetype=python
" ---
