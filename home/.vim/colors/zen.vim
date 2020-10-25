" Vim color file
" Name:       inkpot.vim
" Maintainer: Ciaran McCreesh <ciaran.mccreesh@blueyonder.co.uk>
" This should work in the GUI, rxvt-unicode (88 colour mode) and xterm (256
" colour mode). It won't work in 8/16 colour terminals.
"
" To use a black background, :let g:inkpot_black_background = 1

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "myinkpot"

if has('gui_running')
    hi Normal         gui=NONE   guifg=#cfbfad   guibg=#1e1e27
    hi IncSearch      gui=BOLD   guifg=#303030   guibg=#cd8b60
    hi Search         gui=NONE   guifg=#303030   guibg=#cd8b60
    hi ErrorMsg       gui=BOLD   guifg=#ffffff   guibg=#ce4e4e
    hi WarningMsg     gui=BOLD   guifg=#ffffff   guibg=#ce8e4e
    hi ModeMsg        gui=BOLD   guifg=#7e7eae   guibg=NONE
    hi MoreMsg        gui=BOLD   guifg=#7e7eae   guibg=NONE
    hi Question       gui=BOLD   guifg=#ffcd00   guibg=NONE

    hi StatusLine     gui=BOLD   guifg=#b9b9b9   guibg=#3e3e5e
    hi User1          gui=BOLD   guifg=#00ff8b   guibg=#3e3e5e
    hi User2          gui=BOLD   guifg=#7070a0   guibg=#3e3e5e
    hi StatusLineNC   gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e
    hi VertSplit      gui=NONE   guifg=#b9b9b9   guibg=#3e3e5e

    hi WildMenu       gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf

    hi MBENormal                 guifg=#cfbfad   guibg=#2e2e3f
    hi MBEChanged                guifg=#eeeeee   guibg=#2e2e3f
    hi MBEVisibleNormal          guifg=#cfcfcd   guibg=#4e4e8f
    hi MBEVisibleChanged         guifg=#eeeeee   guibg=#4e4e8f

    hi DiffText       gui=NONE   guifg=#ffffcd   guibg=#4a2a4a
    hi DiffChange     gui=NONE   guifg=#ffffcd   guibg=#306b8f
    hi DiffDelete     gui=NONE   guifg=#ffffcd   guibg=#6d3030
    hi DiffAdd        gui=NONE   guifg=#ffffcd   guibg=#306d30

    hi Cursor         gui=NONE   guifg=#404040   guibg=#8b8bff
    hi lCursor        gui=NONE   guifg=#404040   guibg=#8fff8b
    hi CursorIM       gui=NONE   guifg=#404040   guibg=#8b8bff
    hi CursorLine     gui=NONE                   guibg=#000000

    hi Folded         gui=NONE   guifg=#cfcfcd   guibg=#4b208f
    hi FoldColumn     gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e

    hi Directory      gui=NONE   guifg=#00ff8b   guibg=NONE
    hi LineNr         gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e
    hi SignColumn     gui=NONE   guifg=#8b8bcd   guibg=#2e2e2e
    hi NonText        gui=BOLD   guifg=#8b8bcd   guibg=NONE
    hi SpecialKey     gui=BOLD   guifg=#ab60ed   guibg=NONE
    hi Title          gui=BOLD   guifg=#af4f4b   guibg=NONE
    hi Visual         gui=NONE   guifg=#eeeeee   guibg=#4e4e8f

    hi Comment        gui=NONE   guifg=#cd8b00   guibg=NONE
    hi Constant       gui=NONE   guifg=#ffcd8b   guibg=NONE
    hi String         gui=NONE   guifg=#ffcd8b   guibg=#404040
    hi Error          gui=NONE   guifg=#ffffff   guibg=#6e2e2e
    hi Identifier     gui=NONE   guifg=#ff8bff   guibg=NONE
    hi Ignore         gui=NONE
    hi Number         gui=NONE   guifg=#f0ad6d   guibg=NONE
    hi PreProc        gui=NONE   guifg=#409090   guibg=NONE
    hi Special        gui=NONE   guifg=#c080d0   guibg=NONE
    hi SpecialChar    gui=NONE   guifg=#c080d0   guibg=#404040
    hi Statement      gui=NONE   guifg=#808bed   guibg=NONE
    hi Todo           gui=BOLD   guifg=#303030   guibg=#d0a060
    hi Type           gui=NONE   guifg=#ff8bff   guibg=NONE
    hi Underlined     gui=BOLD   guifg=#df9f2d   guibg=NONE
    hi TaglistTagName gui=BOLD   guifg=#808bed   guibg=NONE

    hi perlSpecialMatch   gui=NONE guifg=#c080d0   guibg=#404040
    hi perlSpecialString  gui=NONE guifg=#c080d0   guibg=#404040

    hi cSpecialCharacter  gui=NONE guifg=#c080d0   guibg=#404040
    hi cFormat            gui=NONE guifg=#c080d0   guibg=#404040

    hi doxygenBrief                 gui=NONE guifg=#fdab60   guibg=NONE
    hi doxygenParam                 gui=NONE guifg=#fdd090   guibg=NONE
    hi doxygenPrev                  gui=NONE guifg=#fdd090   guibg=NONE
    hi doxygenSmallSpecial          gui=NONE guifg=#fdd090   guibg=NONE
    hi doxygenSpecial               gui=NONE guifg=#fdd090   guibg=NONE
    hi doxygenComment               gui=NONE guifg=#ad7b20   guibg=NONE
    hi doxygenSpecial               gui=NONE guifg=#fdab60   guibg=NONE
    hi doxygenSpecialMultilineDesc  gui=NONE guifg=#ad600b   guibg=NONE
    hi doxygenSpecialOnelineDesc    gui=NONE guifg=#ad600b   guibg=NONE
    hi ColorColumn                                           guibg=#2c2d27

    if v:version >= 700
        hi Pmenu          gui=NONE   guifg=#eeeeee   guibg=#4e4e8f
        hi PmenuSel       gui=BOLD   guifg=#eeeeee   guibg=#2e2e3f
        hi PmenuSbar      gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf
        hi PmenuThumb     gui=BOLD   guifg=#eeeeee   guibg=#6e6eaf

        hi SpellBad     gui=undercurl guisp=#cc6666
        hi SpellRare    gui=undercurl guisp=#cc66cc
        hi SpellLocal   gui=undercurl guisp=#cccc66
        hi SpellCap     gui=undercurl guisp=#66cccc

        hi MatchParen   gui=NONE      guifg=#404040   guibg=#8fff8b
    endif
elseif (&g:t_Co == 256 || &g:t_Co == 88) && !has('gui_running')
    " mapped bright blue (ansi 12) to #3e3e5e, changed 235 bg to 12
    hi   Normal                        cterm=NONE        ctermfg=NONE   ctermbg=NONE
    hi   IncSearch                     cterm=BOLD        ctermfg=235    ctermbg=173
    hi   Search                        cterm=NONE        ctermfg=235    ctermbg=173
    hi   ErrorMsg                      cterm=BOLD        ctermfg=231    ctermbg=167
    hi   WarningMsg                    cterm=BOLD        ctermfg=231    ctermbg=173
    hi   ModeMsg                       cterm=BOLD        ctermfg=103    ctermbg=NONE
    hi   MoreMsg                       cterm=BOLD        ctermfg=103    ctermbg=NONE
    hi   Question                      cterm=BOLD        ctermfg=220    ctermbg=NONE

    "hi   StatusLine                    cterm=BOLD        ctermfg=249    ctermbg=17
    "hi   StatusLine                    cterm=NONE        ctermfg=249    ctermbg=235
    "hi   StatusLine                    cterm=NONE        ctermfg=249    ctermbg=60
    hi   StatusLine                    cterm=NONE        ctermfg=231    ctermbg=NONE
    hi   User1                         cterm=BOLD        ctermfg=48     ctermbg=235
    hi   User2                         cterm=BOLD        ctermfg=61     ctermbg=235
    "hi   StatusLine                    cterm=BOLD        ctermfg=249    ctermbg=235
    hi   User1                         cterm=BOLD        ctermfg=48     ctermbg=12
    hi   User2                         cterm=BOLD        ctermfg=61     ctermbg=12
    hi   StatusLineNC                  cterm=NONE        ctermfg=231    ctermbg=NONE
    hi   VertSplit                     cterm=NONE        ctermfg=231    ctermbg=NONE

    hi   WildMenu                      cterm=BOLD        ctermfg=254    ctermbg=61
    hi   MBENormal                     cterm=NONE        ctermfg=181    ctermbg=16
    hi   MBEChanged                    cterm=NONE        ctermfg=254    ctermbg=16
    hi   MBEVisibleNormal              cterm=NONE        ctermfg=251    ctermbg=60
    hi   MBEVisibleChanged             cterm=NONE        ctermfg=254    ctermbg=60
    hi   DiffText                      cterm=NONE        ctermfg=230    ctermbg=16
    hi   DiffChange                    cterm=NONE        ctermfg=230    ctermbg=24
    hi   DiffDelete                    cterm=NONE        ctermfg=230    ctermbg=52
    hi   DiffAdd                       cterm=NONE        ctermfg=230    ctermbg=22
    hi   Cursor                        cterm=NONE        ctermfg=237    ctermbg=105
    hi   lCursor                       cterm=NONE        ctermfg=237    ctermbg=120
    hi   CursorIM                      cterm=NONE        ctermfg=237    ctermbg=105
    hi   CursorLine                    cterm=NONE        ctermfg=NONE   ctermbg=16
    hi   Folded                        cterm=NONE        ctermfg=251    ctermbg=54
    hi   FoldColumn                    cterm=NONE        ctermfg=104    ctermbg=235
    hi   Directory                     cterm=NONE        ctermfg=213     ctermbg=NONE
    hi   LineNr                        cterm=NONE        ctermfg=104    ctermbg=235
    hi   SignColumn                    cterm=NONE        ctermfg=104    ctermbg=235
    hi   NonText                       cterm=BOLD        ctermfg=104    ctermbg=NONE
    hi   SpecialKey                    cterm=BOLD        ctermfg=135    ctermbg=NONE
    hi   Title                         cterm=BOLD        ctermfg=131    ctermbg=NONE
    hi   Visual                        cterm=NONE        ctermfg=254    ctermbg=61
    hi   Comment                       cterm=NONE        ctermfg=216    ctermbg=NONE
    hi   SpecialComment                cterm=undercurl   ctermfg=216    ctermbg=NONE
    hi   Constant                      cterm=NONE        ctermfg=37    ctermbg=NONE
    hi   String                        cterm=NONE        ctermfg=222     ctermbg=NONE
    hi   Error                         cterm=NONE        ctermfg=231    ctermbg=52
    " Identifier: method name, ...
    hi   Identifier                    cterm=NONE        ctermfg=213   ctermbg=NONE
    hi   Ignore                        cterm=NONE        ctermfg=15   ctermbg=NONE
    hi   Number                        cterm=NONE        ctermfg=15    ctermbg=NONE
    hi   PreProc                       cterm=NONE        ctermfg=37     ctermbg=NONE
    hi   Special                       cterm=NONE        ctermfg=222    ctermbg=NONE
    hi   SpecialChar                   cterm=NONE        ctermfg=140    ctermbg=237
    " Statement: def, class, ....
    hi   Statement                     cterm=NONE        ctermfg=105     ctermbg=NONE
    hi   Todo                          cterm=undercurl   ctermfg=216    ctermbg=NONE
    hi   Type                          cterm=NONE        ctermfg=213    ctermbg=NONE
    hi   Underlined                    cterm=BOLD        ctermfg=178    ctermbg=NONE
    hi   TaglistTagName                cterm=BOLD        ctermfg=105    ctermbg=NONE
    hi   perlSpecialMatch              cterm=NONE        ctermfg=140    ctermbg=237
    hi   perlSpecialString             cterm=NONE        ctermfg=140    ctermbg=237
    hi   cSpecialCharacter             cterm=NONE        ctermfg=140    ctermbg=237
    hi   cFormat                       cterm=NONE        ctermfg=140    ctermbg=237
    "hi   pythonFString                  cterm=NONE        ctermfg=37     ctermbg=NONE
    "hi   pythonRawFString                        cterm=undercurl       ctermfg=37     ctermbg=NONE
    hi   pythonDecorator               cterm=NONE        ctermfg=105     ctermbg=NONE
    "hi   pythonStrInterpRegion                    cterm=NONE        ctermfg=213   ctermbg=NONE
    hi   pythonStrInterpRegion  cterm=NONE       ctermfg=2     ctermbg=NONE
    hi   pythonFunctionCall               cterm=NONE        ctermfg=2     ctermbg=NONE
    hi   pythonBuiltinFunc               cterm=NONE        ctermfg=105     ctermbg=NONE
    hi   pythonBuiltinType              cterm=NONE        ctermfg=105     ctermbg=NONE
    hi   pythonBuiltinObj              cterm=NONE        ctermfg=105     ctermbg=NONE
    hi   pythonSingleton              cterm=NONE        ctermfg=105     ctermbg=NONE
    hi   doxygenBrief                  cterm=NONE        ctermfg=215    ctermbg=NONE
    hi   doxygenParam                  cterm=NONE        ctermfg=222    ctermbg=NONE
    hi   doxygenPrev                   cterm=NONE        ctermfg=222    ctermbg=NONE
    hi   doxygenSmallSpecial           cterm=NONE        ctermfg=222    ctermbg=NONE
    hi   doxygenSpecial                cterm=NONE        ctermfg=222    ctermbg=NONE
    hi   doxygenComment                cterm=NONE        ctermfg=136    ctermbg=NONE
    hi   doxygenSpecial                cterm=NONE        ctermfg=215    ctermbg=NONE
    hi   doxygenSpecialMultilineDesc   cterm=NONE        ctermfg=130    ctermbg=NONE
    hi   doxygenSpecialOnelineDesc     cterm=NONE        ctermfg=130    ctermbg=NONE
    hi   Pmenu                         cterm=NONE        ctermfg=254    ctermbg=60
    hi   PmenuSel                      cterm=BOLD        ctermfg=254    ctermbg=16
    hi   PmenuSbar                     cterm=BOLD        ctermfg=254    ctermbg=61
    hi   PmenuThumb                    cterm=BOLD        ctermfg=254    ctermbg=61
    hi   SpellBad                      cterm=undercurl   ctermfg=NONE   ctermbg=NONE
    hi   SpellRare                     cterm=undercurl   ctermfg=NONE   ctermbg=NONE
    hi   SpellLocal                    cterm=undercurl   ctermfg=NONE   ctermbg=NONE
    hi   SpellCap                      cterm=undercurl   ctermfg=NONE   ctermbg=NONE
    hi   MatchParen                    cterm=NONE        ctermfg=237    ctermbg=120
    hi   ColorColumn                   cterm=NONE        ctermfg=NONE   ctermbg=235
endif

" vim: set et :
