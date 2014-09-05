"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible
:let mapleader = ","

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
silent! call pathogen#runtime_append_all_bundles()
call pathogen#infect()

"Basic setup"
source ~/.vim/setup/basicsetup.vim
source ~/.vim/setup/searchistuffi.vim
source ~/.vim/setup/keybindings.vim
source ~/.vim/setup/autocmd.vim
source ~/.vim/setup/ultra.vim
source ~/.vim/setup/testing.vim

