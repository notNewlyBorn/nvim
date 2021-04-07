" NOTES
" Although anything in ~/AppData/Local/nvim/plugin will automatically be sourced, I find it convenient to individually source config files so as to be able to easily comment out config files that are not needed while leaving them intact.

" GENERAL
source $HOME/AppData/Local/nvim/general/settings.vim
source $HOME/AppData/Local/nvim/vim-plug/plugins.vim

" TEXT SUPPORT
source $HOME/AppData/Local/nvim/plug-config/markdown.vim
source $HOME/AppData/Local/nvim/plug-config/markdown-preview.vim

" FILE MANAGEMENT
source $HOME/AppData/Local/nvim/plug-config/start-screen.vim
source $HOME/AppData/Local/nvim/plug-config/fzf.vim
source $HOME/AppData/Local/nvim/plug-config/gitgutter.vim
source $HOME/AppData/Local/nvim/plug-config/signify.vim

" AUTOCOMPLETE
source $HOME/AppData/Local/nvim/plug-config/coc.vim
source $HOME/AppData/Local/nvim/plug-config/deoplete.vim
source $HOME/AppData/Local/nvim/plug-config/ultisnips.vim
source $HOME/AppData/Local/nvim/plug-config/autopairs.vim
source $HOME/AppData/Local/nvim/plug-config/vim-surruound.vim

" ADDITIONAL FUNCTIONS
source $HOME/AppData/Local/nvim/plug-config/quickscope.vim
source $HOME/AppData/Local/nvim/plug-config/floaterm.vim
source $HOME/AppData/Local/nvim/plug-config/multicursor.vim

" MAPPINGS
source $HOME/AppData/Local/nvim/keys/which-key.vim
source $HOME/AppData/Local/nvim/keys/mappings.vim

" APPEARANCE
source $HOME/AppData/Local/nvim/themes/gruvbox.vim
source $HOME/AppData/Local/nvim/themes/airline.vim

"" ABANDONED
" source $HOME/AppData/Local/nvim/plug-config/thesaurus.vim
source $HOME/AppData/Local/nvim/plug-config/goyo.vim
" source $HOME/AppData/Local/nvim/plug-config/pandoc.vim
" source $HOME/AppData/Local/nvim/plug-config/vbox.vim
" source $HOME/AppData/Local/nvim/plug-config/nerdtree.vim
" source $HOME/AppData/Local/nvim/plug-config/vim-commentary.vim
" source $HOME/AppData/Local/nvim/plug-config/rnvimr.vim
" source $HOME/AppData/Local/nvim/plug-config/sneak.vim
" source $HOME/AppData/Local/nvim/themes/onedark.vim
" source $HOME/AppData/Local/nvim/keys/mappings.vim

