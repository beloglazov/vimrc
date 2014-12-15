set gdefault
set ignorecase


" ============================================================================
" Movement
" ============================================================================

" Scroll screen with the cursor
noremap <C-j> gj<C-e>
noremap <C-k> gk<C-y>

" Left / right
noremap <C-h> h
noremap <C-l> l

" Insert mode
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

" Previous / next match
noremap H ,
noremap L ;

" Home row beginning / end of line
noremap h ^
noremap l $

" Previous / next word
noremap k #
noremap j *

" ============================================================================
" Editing
" ============================================================================

" Escape
inoremap jk <Esc>`^
inoremap <C-q> <Esc>`^
noremap <C-q> <Esc>
vnoremap <C-q> <Esc>
cmap <C-q> <C-c>

" Moving blocks of text in visual mode
vnoremap < <gv
vnoremap > >gv

" Select all text
map <Space>a ggVG

" Copy until the end of the line
noremap Y y$

" Indent everything
noremap <Space>I ggvG=

" Indent selection in visual mode
vnoremap <Space>i =

" Indent the current line
noremap <Space>i v=

" Change current word - kill
noremap K ciw

" Change in double quotes
noremap J ci"

" Join lines
nnoremap <Space>J J


" ============================================================================
" Editor control
" ============================================================================

" Enter the command-line mode
noremap <CR> :

" Reload .ideavimrc
nnoremap <Space>vs :source ~/.ideavimrc<CR>


" ============================================================================
" IDE actions
" ============================================================================

nnoremap / :action Find<CR>
nnoremap n :action FindNext<CR>
nnoremap N :action FindPrevious<CR>
nnoremap U :action $Redo<CR>
nnoremap ; :action AceJumpAction<CR>
nnoremap <Space>o :action GotoClass<CR>
nnoremap <Space>O :action GotoFile<CR>
nnoremap <Space>d :action CloseContent<CR>
nnoremap <Space>j :action RecentFiles<CR>
nnoremap <Space>k :action FileStructurePopup<CR>
nnoremap <Space>h :action QuickJavaDoc<CR>
