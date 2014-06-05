" .vimrc of Anton Beloglazov


" ============================================================================
" Early settings
" ============================================================================

" Support fish shell
if &shell =~# 'fish$'
    set shell=sh
endif

" Leader key
let mapleader=" "


" ============================================================================
" Plugins
" ============================================================================

silent! if plug#begin()
let g:plug_timeout = 120


" ----------------------------------------------------------------------------
" Sensible
" ----------------------------------------------------------------------------

Plug 'tpope/vim-sensible'


" ----------------------------------------------------------------------------
" File system
" ----------------------------------------------------------------------------

Plug 'airblade/vim-rooter'

Plug 'kien/ctrlp.vim'
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_prompt_mappings = { 'PrtExit()': ['<esc>', '<c-q>'] }
let g:ctrlp_max_height = 30
noremap <leader>o :CtrlP<CR>
noremap <leader>O :CtrlPCurFile<CR>
noremap <leader>j :CtrlPBuffer<CR>
noremap <leader>r :CtrlPMRUFiles<CR>
noremap <leader>; :CtrlPLine<CR>

Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['.*\.pyc$']
let NERDTreeQuitOnOpen = 1
noremap <silent> <f1> :NERDTreeToggle<CR>
noremap <silent> <f2> :NERDTreeFind<CR>
autocmd FileType nerdtree silent! noremap <buffer> j <down>
autocmd FileType nerdtree silent! noremap <buffer> k <up>
autocmd FileType nerdtree silent! map <buffer> h x
autocmd FileType nerdtree silent! map <buffer> l o

Plug 'tpope/vim-fugitive'
noremap <silent> <f12> :Gstatus<CR>


" ----------------------------------------------------------------------------
" Editing
" ----------------------------------------------------------------------------

Plug 'bitc/vim-bad-whitespace'
nnoremap <leader>W :EraseBadWhitespace<CR>

Plug 'Raimondi/delimitMate'
let delimitMate_balance_matchpairs = 1
au FileType python let b:delimitMate_nesting_quotes = ['"']

Plug 'sickill/vim-pasta'

Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_start_key = '<F6>'
let g:multi_cursor_quit_key = '<C-q>'

Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger='<C-Tab>'
let g:UltiSnipsJumpForwardTrigger='<C-j>'
let g:UltiSnipsJumpBackwardTrigger='<C-k>'
let g:UltiSnipsListSnippets='<C-z>'

Plug 'vim-scripts/visualrepeat'

Plug 'Valloric/YouCompleteMe'
" inoremap <C-@> <C-X><C-L>
inoremap <S-Tab> pumvisible() ? "\<C-P>" : "\<S-Tab>"
let g:EclimCompletionMethod = 'omnifunc'
let g:ycm_semantic_triggers = {'haskell' : ['.']}

Plug 'tpope/vim-abolish'

Plug 'tpope/vim-commentary'
autocmd filetype sql set commentstring=--\ %s

Plug 'tpope/vim-repeat'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-unimpaired'
" nunmap =p
" nunmap =P

Plug 'zirrostig/vim-schlepp'
let g:Schlepp#reindent = 1
vmap <up>    <Plug>SchleppUp
vmap <down>  <Plug>SchleppDown
vmap <left>  <Plug>SchleppLeft
vmap <right> <Plug>SchleppRight
vmap D <Plug>SchleppDup


" ----------------------------------------------------------------------------
" Movement
" ----------------------------------------------------------------------------

Plug 'justinmk/vim-sneak'
let g:sneak#use_ic_scs = 1
let g:sneak#f_reset = 0
let g:sneak#t_reset = 0
let g:sneak#streak = 0
let g:sneak#s_next = 0
nmap j <Plug>SneakNext
nmap k <Plug>SneakPrevious
xmap j <Plug>VSneakNext
xmap k <Plug>VSneakPrevious
omap j <Plug>SneakNext
omap k <Plug>SneakPrevious
map ; <Plug>(SneakStreak)
map ' <Plug>(SneakStreakBackward)
" replace 'f' with inclusive 1-char Sneak
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
" replace 't' with exclusive 1-char Sneak
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T


" ----------------------------------------------------------------------------
" Text objects
" ----------------------------------------------------------------------------

Plug 'AndrewRadev/sideways.vim'
nmap <silent> H :SidewaysJumpLeft<CR>
nmap <silent> L :SidewaysJumpRight<CR>
nmap <silent> <leader>H :SidewaysLeft<CR>
nmap <silent> <leader>L :SidewaysRight<CR>
omap aa <Plug>SidewaysArgumentTextobjA
xmap aa <Plug>SidewaysArgumentTextobjA
omap ia <Plug>SidewaysArgumentTextobjI
xmap ia <Plug>SidewaysArgumentTextobjI

Plug 'bkad/CamelCaseMotion'

Plug 'briandoll/change-inside-surroundings.vim'
nnoremap <leader>s :ChangeInsideSurrounding<CR>
nnoremap <leader>ca :ChangeAroundSurrounding<CR>

Plug 'coderifous/textobj-word-column.vim'

Plug 'kana/vim-textobj-user'

Plug 'Julian/vim-textobj-brace'

Plug 'kana/vim-textobj-function'

Plug 'beloglazov/vim-textobj-quotes'

Plug 'beloglazov/vim-textobj-punctuation'

Plug 'Julian/vim-textobj-variable-segment'

Plug 'michaeljsmith/vim-indent-object'

Plug 'terryma/vim-expand-region'
map = <Plug>(expand_region_expand)
map - <Plug>(expand_region_shrink)


" ----------------------------------------------------------------------------
" UI
" ----------------------------------------------------------------------------

Plug 'beloglazov/vim-statline'
set noshowmode
set laststatus=2
let g:statline_fugitive = 1
let g:statline_show_n_buffers = 0
let g:statline_show_encoding = 0
let g:statline_filename_relative = 1

Plug 'molok/vim-smartusline'
let g:smartusline_string_to_highlight = '[%n]'

Plug 'junegunn/goyo.vim'
noremap <silent> <F7> :Goyo<CR>

Plug 'majutsushi/tagbar'
nnoremap <silent> <leader>t :TagbarToggle<CR>
let g:tagbar_autoclose = 1
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_compact = 1
let g:tagbar_indent = 1
let g:tagbar_type_scala = {
    \ 'ctagstype' : 'Scala',
    \ 'kinds'     : [
        \ 'p:packages:1',
        \ 'V:values',
        \ 'v:variables',
        \ 'T:types',
        \ 't:traits',
        \ 'o:objects',
        \ 'a:aclasses',
        \ 'c:classes',
        \ 'r:cclasses',
        \ 'm:methods'
    \ ]
\ }

Plug 'mhinz/vim-startify'

Plug 'milkypostman/vim-togglelist'
let g:toggle_list_no_mappings = 1
nnoremap <script> <silent> <f9>  :call ToggleLocationList()<CR>
nnoremap <script> <silent> <f10> :call ToggleQuickfixList()<CR>


" ----------------------------------------------------------------------------
" Search
" ----------------------------------------------------------------------------

Plug 'dyng/ctrlsf.vim'
let g:ctrlsf_selected_line_hl = 'p'
nnoremap <F4> :CtrlSF<space>

Plug 'ivyl/vim-bling'
let g:bling_no_map = 1
let g:bling_time = 50
let g:bling_count = 1
nnoremap <silent> n nzz:call BlingHighight()<CR>
nnoremap <silent> N Nzz:call BlingHighight()<CR>

Plug 'tacahiroy/ctrlp-funky'
let g:ctrlp_extensions = ['funky']
nnoremap <leader>f :CtrlPFunky<CR>
" Narrow the list down with a word under cursor
nnoremap <leader>F :execute 'CtrlPFunky ' . expand('<cword>')<CR>


" ----------------------------------------------------------------------------
" CSV
" ----------------------------------------------------------------------------

Plug 'chrisbra/csv.vim'
hi CSVColumnEven ctermbg=0
hi CSVColumnOdd  ctermbg=0
let g:csv_autocmd_arrange = 1
let g:csv_nomap_cr = 1
let g:csv_highlight_column = 'y'


" ----------------------------------------------------------------------------
" Fish
" ----------------------------------------------------------------------------

Plug 'dag/vim-fish'
" Set up :make to use fish for syntax checking
autocmd FileType fish compiler fish


" ----------------------------------------------------------------------------
" Haskell
" ----------------------------------------------------------------------------

Plug 'dag/vim2hs'
let g:haskell_conceal = 0
let g:haskell_autotags = 1
let g:haskell_tags_generator = 'fast-tags'

Plug 'Shougo/vimproc.vim'

Plug 'eagletmt/ghcmod-vim'
autocmd BufWritePost *.hs GhcModCheckAndLintAsync
hi ghcmodType ctermbg=yellow
let g:ghcmod_type_highlight = 'ghcmodType'
map <silent> + :GhcModType<CR>
map <silent> _ :GhcModTypeClear<CR>

Plug 'eagletmt/neco-ghc'
let g:necoghc_enable_detailed_browse = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

Plug 'nbouscal/vim-stylish-haskell'


" ----------------------------------------------------------------------------
" HTML
" ----------------------------------------------------------------------------

Plug 'Valloric/MatchTagAlways'

" ----------------------------------------------------------------------------
" Latex
" ----------------------------------------------------------------------------

Plug 'LaTeX-Box-Team/LaTeX-Box'
let g:LatexBox_complete_inlineMath = 1
autocmd BufReadPre *.tex setlocal tabstop=2
autocmd BufReadPre *.tex setlocal softtabstop=2
autocmd BufReadPre *.tex setlocal shiftwidth=2
autocmd BufReadPre *.tex setlocal expandtab
autocmd BufReadPre *.tex nmap <leader>t :LatexTOCToggle<CR>
autocmd BufReadPre *.tex imap <buffer> [[ \begin{
autocmd BufReadPre *.tex imap <buffer> ]] <Plug>LatexCloseCurEnv
autocmd BufReadPre *.tex nmap <buffer> <F5> <Plug>LatexChangeEnv
autocmd BufReadPre *.tex vmap <buffer> <F6> <Plug>LatexWrapSelection
autocmd BufReadPre *.tex vmap <buffer> <F7> <Plug>LatexEnvWrapSelection


" ----------------------------------------------------------------------------
" Markdown
" ----------------------------------------------------------------------------

Plug 'tpope/vim-markdown'


" ----------------------------------------------------------------------------
" Python
" ----------------------------------------------------------------------------

Plug 'davidhalter/jedi-vim'
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#completions_enable = 0
nnoremap <silent> <buffer> <leader>K :call jedi#show_documentation()<CR>
nnoremap <silent> <buffer> <leader>R :call jedi#rename()<CR>
nnoremap <silent> <buffer> <leader>U :call jedi#usages()<CR>

Plug 'klen/python-mode'
let g:pymode_run = 0
let g:pymode_rope = 0
let g:pymode_folding = 0
let g:pymode_indent = 0
let g:pymode_lint_cwindow = 0
let g:pymode_doc = 0
let g:pymode_doc_key = ''
let g:pymode_lint_ignore = 'W0401,E125,C901,C0110'
let g:pymode_breakpoint_key = '<localleader>b'
let g:pymode_options = 0
autocmd FileType python noremap <F5> :PyLint<CR>
autocmd FileType python setlocal complete+=t
autocmd FileType python setlocal formatoptions-=t
autocmd FileType python setlocal nowrap
autocmd FileType python setlocal commentstring=#%s

Plug 'Valloric/python-indent'


" ----------------------------------------------------------------------------
" Scala
" ----------------------------------------------------------------------------

Plug 'derekwyatt/vim-scala'
let g:scala_sort_across_groups=1
autocmd FileType scala setlocal textwidth=90
autocmd FileType scala setlocal colorcolumn=91
autocmd FileType scala setlocal tabstop=2
autocmd FileType scala setlocal softtabstop=2
autocmd FileType scala setlocal shiftwidth=2

Plug 'tfnico/vim-gradle'


" ----------------------------------------------------------------------------
" Other
" ----------------------------------------------------------------------------

Plug 'arecarn/crunch'
nnoremap <leader>cr :Crunch<CR>

Plug 'beloglazov/vim-online-thesaurus'

Plug 'vim-scripts/YankRing.vim'
let g:yankring_history_dir = '~/.vim'
let g:yankring_history_file = 'yankring_history_file'
nnoremap <silent> <F3> :YRShow<CR>
function! YRRunAfterMaps()
    nnoremap Y :<C-U>YRYankCount 'y$'<CR>
    xmap j <Plug>(textobj-brace-i)
    omap j <Plug>(textobj-brace-i)
    xmap q <Plug>(textobj-quote-i)
    omap q <Plug>(textobj-quote-i)
    xmap k <plug>(textobj-quote-i)
    omap k <plug>(textobj-quote-i)
    xmap u <plug>(textobj-punctuation-i)
    omap u <plug>(textobj-punctuation-i)
endfunction


call plug#end()
endif


" ============================================================================
" No plugins - fallback
" ============================================================================

if !exists('g:loaded_sensible')
	set nocompatible
	filetype plugin indent on
	syntax enable
	set autoindent
	set backspace=indent,eol,start
	set complete-=i
	set smarttab
	set ttimeout
	set ttimeoutlen=100
	set incsearch
	set wildmenu
    set encoding=utf-8
endif


" ============================================================================
" General settings
" ============================================================================

" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc nested source %

" Disable paste mode when leaving insert mode
autocmd! InsertLeave * set nopaste

" Paste without manual switching
map <F5> :set paste<CR>i
imap <F5> <Esc>:set paste<CR>i<Right>

" Allow unsaved changes when opening another file
set hidden

" Disable swap files
" set noswapfile

" Swap file directory
set dir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Search with smart case
set ignorecase
set smartcase

" Substitute all matches in the line
set gdefault

" Share the system clipboard
if has('unnamedplus')
    set clipboard=unnamedplus
else
    set clipboard=unnamed
endif

" Omni-completion
set omnifunc=syntaxcomplete#Complete
set completeopt=longest,menuone

" Wildmenu
set wildmenu
set wildmode=longest:full,full
set wildcharm=<Tab>
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc,*/.ropeproject/*,*.egg,*.egg-info/*,*build/*,*bin/*,*target/*

" Scrolling by blocks
let &scrolljump=&lines / 2 - 1

" Tab config
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Disable folding
set nofoldenable

" Move backup files
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" Line length and wrapping
set textwidth=80
set colorcolumn=81
highlight ColorColumn ctermbg=233

" Spell checking
autocmd BufRead *.tex,*.md setlocal spell spelllang=en_au
set spellfile=~/.vim/spell.en.add
nmap <leader>= 1z=

" Yaml
autocmd BufReadPre *.yaml setlocal nowrap
autocmd BufReadPre *.yaml setlocal tabstop=2
autocmd BufReadPre *.yaml setlocal softtabstop=2
autocmd BufReadPre *.yaml setlocal shiftwidth=2

" Enable C-Tab
imap <Esc>[27;5;9~ <C-Tab>
nmap <Esc>[27;5;9~ <C-Tab>


" ============================================================================
" Appearance
" ============================================================================

" Hide black line tildas
highlight NonText ctermfg=0

" Coloring
hi StatusLine   cterm=reverse ctermfg=233 ctermbg=4
hi StatusLineNC cterm=reverse ctermfg=233 ctermbg=8
hi VertSplit    cterm=reverse ctermfg=233 ctermbg=8
hi Search       ctermbg=NONE
hi Error        ctermbg=NONE ctermfg=red
hi SignColumn   ctermbg=233
hi FoldColumn   ctermbg=233

" Color in text files
autocmd FileType text set filetype=markdown


" ============================================================================
" Movement: command-line
" ============================================================================

" Better command-line movement
cnoremap <C-j> <t_kd>
cnoremap <C-k> <t_ku>
cnoremap <C-a> <Home>
cnoremap <C-e> <End>

" Force saving that requires root permissions
cmap w!! %!sudo tee > /dev/null %


" ============================================================================
" Movement: normal mode
" ============================================================================

" Scroll screen with the cursor
noremap <C-j> gj<C-e>
noremap <C-k> gk<C-y>

" Left / right
noremap <C-h> h
noremap <C-l> l

" Home row beginning / end of line
noremap h ^
noremap l $

" Search the current word in front / behind
noremap ( #
noremap ) *

" Jump to the middle of the line
nnoremap <silent> gm :call cursor(0, len(getline('.'))/2)<CR>


" ============================================================================
" Movement: insert mode
" ============================================================================

" Basic
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-l> <Right>
inoremap <C-h> <Left>

" Beginning / end of line
inoremap <C-a> <Home>
inoremap <C-e> <End>

" Delete a word forward
inoremap <C-d> <C-o>dw

" Dedent the current line
inoremap <C-f> <C-d>


" ============================================================================
" Movement: operator-pending mode
" ============================================================================

xnoremap p ip
xnoremap ( i(
xnoremap { i{
xnoremap [ i[
xnoremap < i<
xnoremap ` i"
xnoremap ' i'
xnoremap " i"

onoremap p ip
onoremap ( i(
onoremap { i{
onoremap [ i[
onoremap < i<
onoremap ` i"
onoremap ' i'
onoremap " i"


" ============================================================================
" Editing
" ============================================================================

" Escape
inoremap jk <Esc>`^
inoremap <C-q> <Esc>`^
noremap <C-q> <Esc>
vnoremap <C-q> <Esc>
cmap <C-q> <C-c>

" Easy redo
nnoremap U <C-r>

" Reflow a paragraph
vmap <leader>q gq
nmap <leader>q gqap

" Moving blocks of text in visual mode
vnoremap < <gv
vnoremap > >gv

" Copy the selected region and jump to its end
" vmap y y`]

" Select all text
map <leader>a ggVG

" Duplicate a line and comment the first copy
nmap gcd yyPgcc

" Duplicate a region and comment the first copy
vmap gcc gc<Esc>

" Duplicate a region and comment the first copy
vmap gcd yPgvgc<Esc>

" Indent everything
noremap <leader>I gg=G<C-o><C-o>

" Indent selection in visual mode
vnoremap <leader>i =

" Indent the current line
noremap <leader>i v=

" Switch capitalization of the first letter of the current word
nmap crf m`T<Space>~``

" Change current word - kill
noremap K ciw

" Change current WORD - kill
" noremap J ciW

" Change until punctuation
nmap J ciu

" Join lines
nnoremap <leader>J J

" Insert a space
nnoremap <leader><Space> i<Space><Esc>

" ============================================================================
" Editor control
" ============================================================================

" Enter the command-line mode
noremap <CR> :

" Save
noremap  <silent> <C-s> :update<CR>
vnoremap <silent> <C-s> <C-c>:update<CR>
inoremap <silent> <C-s> <C-o>:update<CR>

" Quit
noremap Q :quit<CR>

" Jump between windows
noremap <leader>w <C-w>w
" noremap <Up> <C-w>k
" noremap <Down> <C-w>j
" noremap <Left> <C-w>h
" noremap <Right> <C-w>l

" Jump between buffers
" noremap <silent> <leader>j :bnext<CR>
" noremap <silent> <leader>k :bprev<CR>
noremap <silent> <leader>l :b#<CR>

" Delete the current buffer
noremap <leader>d :bdelete<CR>

" Edit a file
noremap <leader>e :e <Tab>

" Very magic regex search by default
nnoremap / /\v

" Open .vimrc
nnoremap <leader>ve :split $MYVIMRC<CR>

" Source .vimrc
nnoremap <leader>vs :source $MYVIMRC<CR>i<Esc>


" ============================================================================
" Java key bindings (eclim)
" ============================================================================

let g:EclimLoggingDisabled = 1
let g:EclimJavaSearchMapping = 0
let g:EclimJavaSearchSingleResult = 'edit'
let g:EclimJavaHierarchyDefaultAction = 'edit'
let g:EclimJavaCallHierarchyDefaultAction = 'edit'
autocmd FileType java nnoremap <localleader>l :lfirst<CR>
autocmd FileType java nnoremap <localleader>o :CtrlP src<CR>
autocmd FileType java nnoremap <localleader>m :CtrlP src/main<CR>
autocmd FileType java nnoremap <localleader>t :CtrlP src/test<CR>
autocmd FileType java nnoremap <localleader>j :CtrlP src/main/java<CR>
autocmd FileType java nnoremap <silent> <buffer> <localleader>i :JavaImport<CR>
autocmd FileType java nnoremap <silent> <buffer> <localleader>I :JavaImportOrganize<CR>
autocmd FileType java nnoremap <silent> <buffer> <localleader>d :JavaDocSearch -x declarations<CR>
autocmd FileType java nnoremap <silent> <buffer> <localleader>s :JavaSearchContext<CR>
autocmd FileType java nnoremap <silent> <buffer> <localleader>q :JavaCorrect<CR>
autocmd FileType java nnoremap <silent> <buffer> <leader>i :JavaFormat<CR>
autocmd FileType java nnoremap <silent> <buffer> <leader>I :%JavaFormat<CR>
autocmd FileType java nnoremap <silent> <buffer> <localleader>h :JavaHierarchy<CR>
autocmd FileType java nnoremap <silent> <buffer> <localleader>c :JavaCallHierarchy<CR>
autocmd FileType java nnoremap <buffer> <localleader>rr :JavaRename<space>
autocmd FileType java nnoremap <buffer> <localleader>rm :JavaMove<space>
autocmd FileType java nnoremap <silent> <buffer> <localleader>ru :RefactorUndo<CR>
