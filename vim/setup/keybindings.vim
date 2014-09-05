map <leader><Tab> <C-w>w
nnoremap <Leader>w <C-w>w
nnoremap <c-c> <esc>

noremap <F1> <Esc>
noremap Z zz
" Mappings for write

" Clear search highlights
noremap <silent><Leader>/ :nohls<CR>

nnoremap <F3> :NumbersToggle<CR>


" copy file name or parent path from current file
noremap cp :let @" = expand("%")<cr>


noremap <leader>r :redraw!<cr>

" jk is escape
inoremap jk <esc>
nnoremap <leader>ex :e .exrc<cr>

noremap <Leader>n :cn<cr>
noremap <Leader>p :cp<cr>

" split resizing
noremap - <C-W><
noremap + <C-W>>

noremap <A-j> <C-W>-
noremap <A-k> <C-W>+

" Open splits with leader
noremap <leader>vs :vs %<cr>
noremap <leader>ss :split %<cr>

nnoremap <silent> <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <silent> <F6> :let _s=@/<Bar>:%s/\vecho (\$.{-});/if(isset(\1)) echo \1;/g<Bar>:let @/=_s<Bar>:nohl<CR>

" Buffer switch
" " Mappings to access buffers (don't use "\p" because a
" " delay before pressing "p" would accidentally paste).
" " \l       : list buffers
" " \b \f \g : go back/forward/last-used
" " \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>k :bp<CR>
nnoremap <Leader>j :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" " It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
:nnoremap <C-k> :bnext<CR>
:nnoremap <C-j> :bprevious<CR>

" lorte binding
nnoremap <tab><tab>r :!xdg-open "http://www.youtube.com/watch?v=Eky6bCnCLOI\#t=171"<cr>
