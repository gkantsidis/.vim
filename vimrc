
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
