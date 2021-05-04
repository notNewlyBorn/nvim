" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
let g:which_key_map['d'] = [ ':bd'                  , 'delete buffer']
let g:which_key_map['e'] = [ ':CocCommand explorer'  , 'explorer' ]
let g:which_key_map['q'] = [ ':wqa'                  , 'quit' ]
let g:which_key_map['w'] = [ ':w'                    , 'write' ]
let g:which_key_map['r'] = [ ':source $MYVIMRC'      , 'reload config' ]
let g:which_key_map.c = 'count'
let g:which_key_map.u = 'undo'

" let g:which_key_map['t'] = [ ':OnlineThesaurusCurrentWord<CR>'      , 'thesaurus' ]
" let g:which_key_map['j'] = [ '<Plug>(easymotion-prefix)' , 'motion' ]
" let g:which_key_map['u'] = [ 'UndotreeToggle'        , 'undo' ]

" some change

" GROUP MAPPINGS

" s is for SESSIONS
let g:which_key_map.S = {
      \ 'name' : '+session' ,
      \ 's' : [':SSave'                , 'save session'],
      \ 'd' : [':SDelete!'              , 'delete session'],
      \ }


" m is for MARKDOWN
let g:which_key_map.m = {
      \ 'name' : '+markdown' ,
      \ 'p' : ['<Plug>MarkdownPreview'               , 'preview'],
      \ 'k' : ['<Plug>MarkdownPreviewStop'           , 'kill preview'],
      \ 's' : [':call markdown#SwitchStatus()<CR>'   , 'select item'],
      \ }

      " \ 'F' : ['zA'                                  , 'fold all'],
      " \ 'f' : ['za'                                  , 'fold current'],


" y is for you SURROUND
let g:which_key_map.s = {
      \ 'name' : '+surround' ,
      \ 's' : ['<Plug>Ysurround'         , 'surround'],
      \ 'c' : ['<Plug>Csurround'         , 'change'],
      \ 'd' : ['<Plug>Dsurround'         , 'delete'],
      \ 'k' : ['dss'                     , 'kill'],
      \ }


" v is for VIEW
let g:which_key_map.v = {
  \ 'name' : '+view' ,
  \ 'y' : [':CocList -A --normal yank'               , 'yanks'],
  \ 'p' : [ 'Startify'                               , 'projects' ],
  \ 's' : [':FloatermNew! cd ~/.local/share/nvim/swap | ls -A', 'swap'],
  \ }


" a is for ACTIONS
let g:which_key_map.a = {
  \ 'name' : '+actions' ,
  \ 't' : [':FloatermKill!'                          , 'kill terminals'],
  \ 'k' : [':CocDisable'                             , 'kill coc'],
  \ 'r' : [':CocEnable'                              , 'restore coc'],
  \ }


" f is for FIND
let g:which_key_map.f = {
        \ 'name' : '+find' ,
        \ 'f' : [ ':BLines'                          , 'in file' ],
        \ 'c' : [ ':Commands'                        , 'command' ],
        \ 'h' : [ ':Files ~'                         , 'files in home' ],
        \ 'p' : [ ':GGrep'                           , 'in project'],
        \ 'b' : [ ':Buffers'                         , 'buffer'],
        \ }
" let g:which_key_map.f.t = ''


" " s is for SEARCH
" let g:which_key_map.s = {
"       \ 'name' : '+search' ,
"       \ '/' : [':History/'     , 'history'],
"       \ ';' : [':Commands'     , 'commands'],
"       \ 'a' : [':Ag'           , 'text Ag'],
"       \ 'b' : [':BLines'       , 'current buffer'],
"       \ 'B' : [':Buffers'      , 'open buffers'],
"       \ 'c' : [':Commits'      , 'commits'],
"       \ 'C' : [':BCommits'     , 'buffer commits'],
"       \ 'f' : [':Files'        , 'files'],
"       \ 'g' : [':GFiles'       , 'git files'],
"       \ 'G' : [':GFiles?'      , 'modified git files'],
"       \ 'h' : [':History'      , 'file history'],
"       \ 'H' : [':History:'     , 'command history'],
"       \ 'l' : [':Lines'        , 'lines'] ,
"       \ 'm' : [':Marks'        , 'marks'] ,
"       \ 'M' : [':Maps'         , 'normal maps'] ,
"       \ 'p' : [':Helptags'     , 'help tags'] ,
"       \ 'P' : [':Tags'         , 'project tags'],
"       \ 's' : [':Snippets'     , 'snippets'],
"       \ 's' : [':Snippets'     , 'snippets'],
"       \ 'S' : [':Colors'       , 'color schemes'],
"       \ 't' : [':Rg'           , 'text Rg'],
"       \ 'T' : [':BTags'        , 'buffer tags'],
"       \ 'w' : [':Windows'      , 'search windows'],
"       \ 'y' : [':Filetypes'    , 'file types'],
"       \ 'z' : [':FZF'          , 'FZF'],
"       \ }



" g is for GIT
let g:which_key_map.g = {
  \ 'name' : '+git' ,
  \ 'g' : [':FloatermNew lazygit'                      , 'lazygit'],
  \ 'h' : [':GitGutterLineHighlightsToggle'            , 'hunks'],
  \ 'c' : [':FloatermNew! --disposable gh issue create', 'create issue'],
  \ 'l' : [':FloatermNew! --disposable gh issue list'  , 'list issues'],
  \ 'r' : [':FloatermNew! --disposable gh reference'   , 'reference'],
  \ 'v' : [':FloatermNew! --disposable gh repo view -w', 'view repo'],
  \ }

  " \ 'h' : [':FloatermNew! --disposable gh help'         , 'cli help'],

" TO BE USED WITH RUBHARB PLUGIN
      " \ 'l' : [':Git log'                          , 'log'],
      " \ 'P' : [':Git push'                         , 'push'],
      " \ 'p' : [':Git pull'                         , 'pull'],
      " \ 'r' : [':GRemove'                          , 'remove'],
      " \ 's' : [':Gstatus'                          , 'status'],
      " \ 'a' : [':Git add .'                        , 'add all'],
      " \ 'A' : [':Git add %'                        , 'add current'],
      " \ 'b' : [':Git blame'                        , 'blame'],
      " \ 'B' : [':GBrowse'                          , 'browse'],
      " \ 'c' : [':Git commit'                       , 'commit'],
      " \ 'd' : [':Git diff'                         , 'diff'],
      " \ 'D' : [':Gdiffsplit'                       , 'diff split'],
      
" TO BE USED WITH GIT GV PLUGIN
      " \ 'v' : [':GV'                               , 'view commits'],
      " \ 'V' : [':GV!'                              , 'view buffer commits'],

" OTHER GIT BINDINGS
    " \ 't' : [':GitGutterSignsToggle'             , 'toggle signs'],
    " nmap ghp <Plug>(GitGutterPreviewHunk)
    " nmap ghs <Plug>(GitGutterStageHunk)
    " nmap ghu <Plug>(GitGutterUndoHunk)

    " \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'preview hunk'],
    " \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'next hunk'],
    " \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'prev hunk'],
    " \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'stage hunk'],
    " \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],

    " \ 'h' : [':let @/ = ""'               , 'remove search highlight'],
    " \ 'v' : [':Vista!!'                   , 'tag viewer'],
    " \ 'c' : [':ColorizerToggle'           , 'colorizer'],


" Register which key map
call which_key#register('<Space>', "g:which_key_map")
