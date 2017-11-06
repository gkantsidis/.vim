" For collections of interesting plugins see:
"   - http://vimawesome.com

" Included plugins
runtime! ftplugin/man.vim " man pages

let g:plug_dir=expand(g:vimroot . "/plugged")
let g:ale_emit_conflict_warnings = 0

" External plugins
call plug#begin(g:plug_dir)

" UI
Plug 'nanotech/jellybeans.vim'
Plug 'bling/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/syntastic'
Plug 'airblade/vim-gitgutter'
Plug 'junegunn/goyo.vim'
Plug 'jaxbot/semantic-highlight.vim'
Plug 'tpope/vim-vinegar'
"Plug 'altercation/vim-colors-solarized'

" Workflow
Plug 'ciaranm/detectindent'
Plug 'airblade/vim-rooter'          " change working directory to project root
Plug 'AndrewRadev/splitjoin.vim'
Plug 'keith/investigate.vim'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'tomtom/tcomment_vim'
Plug 'MarcWeber/vim-addon-mw-utils' " for snipmate --- interpret a file by function
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'          " code snippet <tab> completion
Plug 'dkprice/vim-easygrep'
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim' | Plug 'w0rp/ale'  " visual line (requires syntastic for error/warning detection)
"Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
" Plug 'jiangmiao/auto-pairs'
"

" Languages
Plug 'dpwright/vim-tup'
Plug 'sheerun/vim-polyglot'
Plug 'valloric/youcompleteme'

" Integration
Plug 'tpope/vim-fugitive'           " git diff/blame functionality
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-dispatch'
Plug 'chrisbra/vim-diff-enhanced'   " pretty vim -d (diff)
"Plug 'Gist.vim'
"Plug 'ervandew/screen'
"Plug 'csexton/jekyll.vim'

" Tools
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeTabsToggle' }   " open filesystem browser (on demand loading)
Plug 'jistr/vim-nerdtree-tabs', { 'on':  'NERDTreeTabsToggle' }
Plug 'majutsushi/tagbar', { 'on':  'TagbarOpenAutoClose' }    " display list of functions, variables etc.
Plug 'gregsexton/gitv'
Plug 'sjl/gundo.vim'
"Plug 'taglist.vim'

" Other
Plug 'milkypostman/vim-togglelist'
Plug 'scrooloose/nerdcommenter'   " enable multiple comments
Plug 'godlygeek/tabular'          " align text (e.g., '=' in consequent lines)
Plug 'mbbill/undotree'            " git-style undo options
Plug 'embear/vim-localvimrc'      " search and local vimrc files ('lvimrc') in the dir tree
Plug 'nathanaelkane/vim-indent-guides'  " show guides at indent stops
Plug 'Raimondi/delimitMate'       " auto-completion for quotes, parentheses etc.

" language-specific
"
if !(has('win32') || has ('win64'))
  " cscope only for Linux / Mac
  Plug 'brookhong/cscope.vim'
endif

Plug 'fsharp/vim-fsharp', {
     \ 'for': 'fsharp',
     \ 'do':  'make fsautocomplete',
     \}

Plug 'editorconfig/editorconfig-vim', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'maksimr/vim-jsbeautify', { 'for': 'javascript' }

Plug 'lilydjwg/colorizer',  { 'for' : 'CSS' }
Plug '2072/PHP-Indenting-for-VIm', { 'for': 'PHP' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }
Plug 'hynek/vim-python-pep8-indent', { 'for': 'python' }

Plug 'vim-latex/vim-latex', { 'for': ['tex', 'latex', 'plaintext'] }
Plug 'chrisbra/csv.vim', { 'for': 'csv' }
Plug 'raichoo/smt-vim'
Plug 'tomlion/vim-solidity'


" Java-specific -- really slow!
" Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
" Plug 'tfnico/vim-gradle', { 'for': 'java' }
" Plug 'tpope/vim-classpath', { 'for': 'java' }

" Load colorschemes
let colorschemes=expand($VIMHOME . "/colorschemes")
Plug colorschemes

call plug#end()
