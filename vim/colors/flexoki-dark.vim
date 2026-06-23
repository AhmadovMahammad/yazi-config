" ============================================================================
"  flexoki-dark.vim  —  minimal Flexoki dark colorscheme (no plugin)
"  Palette by Steph Ango (kepano):  https://stephango.com/flexoki
"  Needs a truecolor terminal + `set termguicolors` (already in ~/.vimrc).
" ============================================================================

hi clear
if exists("syntax_on")
  syntax reset
endif
set background=dark
let g:colors_name = "flexoki-dark"

" ---- Palette ---------------------------------------------------------------
"  base tones
let s:bg    = "#100F0F"   " black        (background)
let s:bg2   = "#1C1B1A"   " base-950     (cursorline, statusline NC)
let s:bg3   = "#282726"   " base-900     (visual, statusline)
let s:bg4   = "#343331"   " base-850     (splits)
let s:sel   = "#403E3C"   " base-800     (matchparen)
let s:tx3   = "#575653"   " base-700     (line numbers, nontext)
let s:tx2   = "#6F6E69"   " base-600     (comments)
let s:tx    = "#CECDC3"   " base-200     (foreground)
"  accents (Flexoki 400-series, tuned for dark backgrounds)
let s:red   = "#D14D41"
let s:orange= "#DA702C"
let s:yellow= "#D0A215"
let s:green = "#879A39"
let s:cyan  = "#3AA99F"
let s:blue  = "#4385BE"
let s:purple= "#8B7EC8"
let s:magenta="#CE5D97"

" ---- cterm (256-color) fallbacks for non-truecolor terminals ---------------
let s:c_bg="233" | let s:c_bg2="234" | let s:c_bg3="235" | let s:c_bg4="236"
let s:c_sel="238" | let s:c_tx3="240" | let s:c_tx2="243" | let s:c_tx="251"
let s:c_red="167" | let s:c_orange="173" | let s:c_yellow="178"
let s:c_green="142" | let s:c_cyan="73" | let s:c_blue="74"
let s:c_purple="103" | let s:c_magenta="168"

" ---- helper ----------------------------------------------------------------
function! s:hi(group, fg, bg, cfg, cbg, attr)
  let l:cmd = "hi " . a:group
  if a:fg  != "" | let l:cmd .= " guifg=" . a:fg  | endif
  if a:bg  != "" | let l:cmd .= " guibg=" . a:bg  | endif
  if a:cfg != "" | let l:cmd .= " ctermfg=" . a:cfg | endif
  if a:cbg != "" | let l:cmd .= " ctermbg=" . a:cbg | endif
  if a:attr != "" | let l:cmd .= " gui=" . a:attr . " cterm=" . a:attr | endif
  execute l:cmd
endfunction

" ---- UI --------------------------------------------------------------------
call s:hi("Normal",       s:tx,  s:bg,  s:c_tx,  s:c_bg,  "")
call s:hi("LineNr",       s:tx3, "",    s:c_tx3, "",      "")
call s:hi("CursorLineNr", s:yellow, s:bg2, s:c_yellow, s:c_bg2, "bold")
call s:hi("CursorLine",   "",    s:bg2, "",      s:c_bg2, "NONE")
call s:hi("CursorColumn", "",    s:bg2, "",      s:c_bg2, "NONE")
call s:hi("ColorColumn",  "",    s:bg2, "",      s:c_bg2, "")
call s:hi("Visual",       "",    s:bg3, "",      s:c_bg3, "")
call s:hi("Search",       s:bg,  s:yellow, s:c_bg, s:c_yellow, "")
call s:hi("IncSearch",    s:bg,  s:orange, s:c_bg, s:c_orange, "")
call s:hi("CurSearch",    s:bg,  s:orange, s:c_bg, s:c_orange, "")
call s:hi("StatusLine",   s:tx,  s:bg3, s:c_tx,  s:c_bg3, "")
call s:hi("StatusLineNC", s:tx2, s:bg2, s:c_tx2, s:c_bg2, "")
call s:hi("VertSplit",    s:bg4, s:bg,  s:c_bg4, s:c_bg,  "")
call s:hi("WinSeparator", s:bg4, s:bg,  s:c_bg4, s:c_bg,  "")
call s:hi("TabLine",      s:tx2, s:bg2, s:c_tx2, s:c_bg2, "")
call s:hi("TabLineFill",  s:tx2, s:bg2, s:c_tx2, s:c_bg2, "")
call s:hi("TabLineSel",   s:tx,  s:bg3, s:c_tx,  s:c_bg3, "bold")
call s:hi("Pmenu",        s:tx,  s:bg2, s:c_tx,  s:c_bg2, "")
call s:hi("PmenuSel",     s:tx,  s:bg3, s:c_tx,  s:c_bg3, "bold")
call s:hi("PmenuSbar",    "",    s:bg3, "",      s:c_bg3, "")
call s:hi("PmenuThumb",   "",    s:tx2, "",      s:c_tx2, "")
call s:hi("MatchParen",   s:yellow, s:sel, s:c_yellow, s:c_sel, "bold")
call s:hi("SignColumn",   s:tx3, s:bg,  s:c_tx3, s:c_bg,  "")
call s:hi("Folded",       s:tx2, s:bg2, s:c_tx2, s:c_bg2, "italic")
call s:hi("FoldColumn",   s:tx3, s:bg,  s:c_tx3, s:c_bg,  "")
call s:hi("NonText",      s:tx3, "",    s:c_tx3, "",      "")
call s:hi("SpecialKey",   s:tx3, "",    s:c_tx3, "",      "")
call s:hi("Whitespace",   s:tx3, "",    s:c_tx3, "",      "")
call s:hi("Directory",    s:blue, "",   s:c_blue, "",     "")
call s:hi("Title",        s:green, "",  s:c_green, "",    "bold")
call s:hi("Question",     s:green, "",  s:c_green, "",    "")
call s:hi("MoreMsg",      s:green, "",  s:c_green, "",    "")
call s:hi("ModeMsg",      s:tx,  "",    s:c_tx,  "",      "bold")
call s:hi("WildMenu",     s:bg,  s:yellow, s:c_bg, s:c_yellow, "bold")
call s:hi("Conceal",      s:tx2, "",    s:c_tx2, "",      "")

" ---- Messages / diagnostics ------------------------------------------------
call s:hi("ErrorMsg",   s:red,    "", s:c_red,    "", "")
call s:hi("WarningMsg", s:orange, "", s:c_orange, "", "")
call s:hi("Error",      s:red,    "", s:c_red,    "", "")
call s:hi("Todo",       s:bg, s:yellow, s:c_bg, s:c_yellow, "bold")

" ---- Syntax ----------------------------------------------------------------
call s:hi("Comment",    s:tx2,    "", s:c_tx2,    "", "italic")
call s:hi("Constant",   s:orange, "", s:c_orange, "", "")
call s:hi("String",     s:green,  "", s:c_green,  "", "")
call s:hi("Character",  s:green,  "", s:c_green,  "", "")
call s:hi("Number",     s:orange, "", s:c_orange, "", "")
call s:hi("Boolean",    s:orange, "", s:c_orange, "", "")
call s:hi("Float",      s:orange, "", s:c_orange, "", "")
call s:hi("Identifier", s:tx,     "", s:c_tx,     "", "")
call s:hi("Function",   s:blue,   "", s:c_blue,   "", "")
call s:hi("Statement",  s:red,    "", s:c_red,    "", "")
call s:hi("Conditional",s:red,    "", s:c_red,    "", "")
call s:hi("Repeat",     s:red,    "", s:c_red,    "", "")
call s:hi("Label",      s:red,    "", s:c_red,    "", "")
call s:hi("Operator",   s:magenta,"", s:c_magenta,"", "")
call s:hi("Keyword",    s:red,    "", s:c_red,    "", "")
call s:hi("Exception",  s:red,    "", s:c_red,    "", "")
call s:hi("PreProc",    s:purple, "", s:c_purple, "", "")
call s:hi("Include",    s:purple, "", s:c_purple, "", "")
call s:hi("Define",     s:purple, "", s:c_purple, "", "")
call s:hi("Macro",      s:purple, "", s:c_purple, "", "")
call s:hi("PreCondit",  s:purple, "", s:c_purple, "", "")
call s:hi("Type",       s:yellow, "", s:c_yellow, "", "")
call s:hi("StorageClass",s:yellow,"", s:c_yellow, "", "")
call s:hi("Structure",  s:yellow, "", s:c_yellow, "", "")
call s:hi("Typedef",    s:yellow, "", s:c_yellow, "", "")
call s:hi("Special",    s:orange, "", s:c_orange, "", "")
call s:hi("SpecialChar",s:orange, "", s:c_orange, "", "")
call s:hi("Tag",        s:blue,   "", s:c_blue,   "", "")
call s:hi("Delimiter",  s:tx,     "", s:c_tx,     "", "")
call s:hi("SpecialComment", s:tx2,"", s:c_tx2,    "", "italic")
call s:hi("Debug",      s:red,    "", s:c_red,    "", "")
call s:hi("Underlined", s:blue,   "", s:c_blue,   "", "underline")
call s:hi("Ignore",     s:tx3,    "", s:c_tx3,    "", "")

" ---- Diff / Spell ----------------------------------------------------------
call s:hi("DiffAdd",    s:green,  s:bg2, s:c_green,  s:c_bg2, "")
call s:hi("DiffDelete", s:red,    s:bg2, s:c_red,    s:c_bg2, "")
call s:hi("DiffChange", s:yellow, s:bg2, s:c_yellow, s:c_bg2, "")
call s:hi("DiffText",   s:orange, s:bg3, s:c_orange, s:c_bg3, "bold")
call s:hi("SpellBad",   s:red,    "",    s:c_red,    "",      "underline")
call s:hi("SpellCap",   s:yellow, "",    s:c_yellow, "",      "underline")
call s:hi("SpellRare",  s:purple, "",    s:c_purple, "",      "underline")
call s:hi("SpellLocal", s:cyan,   "",    s:c_cyan,   "",      "underline")
