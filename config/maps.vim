let mapleader=" "

" NERDTree
nnoremap <Leader>nt :NERDTreeFind<CR>

" File handling
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

" Scrolling
nnoremap <Leader>j 10<C-e>
nnoremap <Leader>k 10<C-y>

" Split resize
nnoremap <Leader>> 10<C-w>>
nnoremap <Leader>< 10<C-w><

" Add semi colon
nnoremap <Leader>; $a;<Esc>

" Add comma
nnoremap <Leader>, $a,<Esc>

" Replace tabs to spaces
nnoremap <Leader>rts :retab<CR>

" Edit config file
nnoremap <Leader>e :e $MYVIMRC<CR>
nnoremap <Leader>ev :vsp $MYVIMRC<CR>
nnoremap <Leader>sv :source $MYVIMRC<CR>

" Tmux Navigator
nnoremap <silent> <Leader>h :TmuxNavigateLeft<CR>
nnoremap <silent> <Leader>l :TmuxNavigateRight<CR>

" Git
nnoremap <Leader>gaa :Git add --all<CR>
nnoremap <Leader>gd :Git diff<CR>
nnoremap <Leader>gp :Git push<CR>
nnoremap <Leader>gl :Git pull<CR>
nnoremap <Leader>gs :Git status<CR>

" Word UpperCase
nnoremap <C-u> bveUe
inoremap <C-u> <Esc>bveUei

" Delete line characters
nnoremap <C-d> dd
inoremap <C-d> <Esc>ddi

" Copy to clipboard all text
nnoremap <C-a> gg0vG$y<Esc>G$

