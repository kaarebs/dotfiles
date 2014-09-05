" smart search
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>
