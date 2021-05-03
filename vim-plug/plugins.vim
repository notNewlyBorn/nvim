" auto-install plugins upon starting
if empty(glob('~/AppData/Local/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/AppData/Local/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/AppData/Local/nvim/autoload/plugged')

" TEXT SUPPORT IS REMOVED

" Markdown SUPPORT IS REMOVED
    
" Better Syntax Support
    " Plug 'sheerun/vim-polyglot'
    
" Spelling
    " Plug 'kopischke/unite-spell-suggest'

" VimWiki
    " Plug 'vimwiki/vimwiki'

" Templates
    " Plug 'KabbAmine/vBox.vim'
    " Plug 'tibabit/vim-templates'
    " Plug 'aperezdc/vim-template'


" FILE MANAGEMENT

" Startup Screen
    Plug 'mhinz/vim-startify'
    
" File Explorer
    Plug 'ryanoasis/vim-devicons' "adds icons to coc-explorer
    
" Fuzzy Finder
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    " Plug 'jremmen/vim-ripgrep'
    " Plug 'ctrlpvim/ctrlp.vim' " Not as elegant as FZF
    
" Git Integration
    Plug 'mhinz/vim-signify'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'

" AUTOCOMPLETE

" Intellisense
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
      " Keeping up to date with master
      " Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins' }
    " Plug 'Valloric/YouCompleteMe'
    
" Snippets
    Plug 'SirVer/ultisnips'
    " Plug 'honza/vim-snippets'

" Auto pairs and surround for '(' '[' '{' etc.
    Plug 'jiangmiao/auto-pairs' 
    Plug 'tpope/vim-surround' 
    Plug 'machakann/vim-sandwich' 
    Plug 'tpope/vim-repeat' 
    

" ADDITIONAL FUNCTIONS

" Comments
    Plug 'tpope/vim-commentary'
    " Plug 'jbgutierrez/vim-better-comments'

" Quick Movements in Text
    Plug 'unblevable/quick-scope'
    Plug 'easymotion/vim-easymotion'
    " Plug 'justinmk/vim-sneak'
    
" Terminal
    Plug 'voldikss/vim-floaterm'
    
" Undo tree
    Plug 'mbbill/undotree'
    
" Multiple Cursors
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Plug 'terryma/vim-multiple-cursors'

" Browser Support
    Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" Registers
    " Plug 'gennaro-tedesco/nvim-peekup'

" Zen mode
 Plug 'junegunn/goyo.vim'

" MAPPINGS

" Look Up Key Bindings
    Plug 'liuchengxu/vim-which-key'


" APPEARANCE

" Themes 
    Plug 'morhetz/gruvbox'  " Source grubox theme
    " Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
    " Plug 'joshdick/onedark.vim'
    
" Satus Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    





call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
