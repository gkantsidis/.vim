
set nocompatible    " not care about vi compat
set t_Co=256        " force 256 colors
set re=1            " use new regexp engine

set nobackup        " no backup files
set nowritebackup   " no backup file while editing
set noswapfile      " no swap files

set undofile                " save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " how many undos
set undoreload=10000        " number of lines to save for undo

scriptencoding utf-8

if has('win32') || has ('win64')
  let $VIMHOME = $HOME."/vimfiles"
else
  let $VIMHOME = $HOME."/.vim"
endif
let g:vimroot=expand($HOME . "/.vim")

source $VIMHOME/plugins.vim
source $VIMHOME/config/default.vim
source $VIMHOME/config/plugins.vim
source $VIMHOME/config/misc.vim
source $VIMHOME/settings.vim
source $VIMHOME/commands.vim
source $VIMHOME/autocommands.vim
source $VIMHOME/mappings.vim
source $VIMHOME/tool_config.vim
source $VIMHOME/extracommands.vim
source $VIMHOME/templates.vim

if filereadable($VIMHOME."/localcommands.vim")
  source $VIMHOME/localcommands.vim
endif

let user_config = expand($VIMHOME . "/config/user.vim")
execute "source ".fnameescape(user_config)

" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>

" ## added by OPAM user-setup for vim / base ## 93ee63e278bdfc07d1139a748ed3fff2 ## you can edit, but keep this line
let s:opam_share_dir = system("opam var share")
let s:opam_share_dir = substitute(s:opam_share_dir, '[\r\n]*$', '', '')

let s:opam_configuration = {}

function! OpamConfOcpIndent()
  execute "set rtp^=" . s:opam_share_dir . "/ocp-indent/vim"
endfunction
let s:opam_configuration['ocp-indent'] = function('OpamConfOcpIndent')

function! OpamConfOcpIndex()
  execute "set rtp+=" . s:opam_share_dir . "/ocp-index/vim"
endfunction
let s:opam_configuration['ocp-index'] = function('OpamConfOcpIndex')

function! OpamConfMerlin()
  let l:dir = s:opam_share_dir . "/merlin/vim"
  execute "set rtp+=" . l:dir
endfunction
let s:opam_configuration['merlin'] = function('OpamConfMerlin')

let s:opam_packages = ["ocp-indent", "ocp-index", "merlin"]
let s:opam_check_cmdline = ["opam list --installed --short --safe --color=never"] + s:opam_packages
let s:opam_available_tools = split(system(join(s:opam_check_cmdline)))
for tool in s:opam_packages
  " Respect package order (merlin should be after ocp-index)
  if count(s:opam_available_tools, tool) > 0
    call s:opam_configuration[tool]()
  endif
endfor
" ## end of OPAM user-setup addition for vim / base ## keep this line
" ## added by OPAM user-setup for vim / ocp-indent ## e5157983ad868c28bcffa9bff2e8c9e0 ## you can edit, but keep this line
" ## end of OPAM user-setup addition for vim / ocp-indent ## keep this line

" APPEARANCE
syntax enable
set background=dark
set laststatus=2    " always show statusline
set ruler           " always show cursor position
set showmode        " display curent mode
set showcmd         " display incomplete commands
set number          " show line numbers

if has("win32")
  set nolist
else
  set list            " visual warnings for unsafe characters
  set listchars=tab:▸·,trail:·,nbsp:●
endif

set expandtab
set shiftwidth=2
set softtabstop=2

" INTERFACE
set wildmenu
set wildignore=.keep,coverage,node_modules,tmp
set wrap lbr                    " break by words
set backspace=indent,eol,start  " liberal backspacing in insert mode
set showmatch                   " show matching brackets when hovering
set viminfo='25,\"50,n~/.vim/.viminfo
set splitright

set history=50
set smartcase
set ttyfast

" SEARCH
set ignorecase
set incsearch
"set hlsearch
hi Search ctermbg=Yellow ctermfg=Black

" TECHNICAL
set mouse=a
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

