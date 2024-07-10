

if exists("b:current_syntax")
  unlet b:current_syntax
endif
syn include @srcTS syntax/typescript.vim
syn region tsCode start='\<%' end='%\>' contains=@srcTS transparent


"if exists("b:current_syntax")
  "unlet b:current_syntax
"endif
"syn include @AWKScript syntax/awk.vim
"syn region AWKScriptCode matchgroup=AWKCommand start=+[=\\]\@<!'+ skip=+\\'+ end=+'+ contains=@AWKScript contained
"syn region AWKScriptEmbedded matchgroup=AWKCommand start=+\<awk\>+ skip=+\\$+ end=+[=\\]\@<!'+me=e-1 contains=@shIdList,@shExprList2 nextgroup=AWKScriptCode
"syn cluster shCommandSubList add=AWKScriptEmbedded
"hi def link AWKCommand Type
"
"syn keyword celTodo contained TODO FIXME XXX NOTE
"syn match celComment "#.*$" contains=celTodo

"----------------------------------------------------------------
" Celestia Star Catalog Numbers
"----------------------------------------------------------------

" Regular int like number with - + or nothing in front
"syn match celNumber '\d\+' contained display
"syn match celNumber '[-+]\d\+' contained display

" Floating point number with decimal no E or e (+,-)
"syn match celNumber '\d\+\.\d*' contained display
"syn match celNumber '[-+]\d\+\.\d*' contained display

" Floating point like number with E and no decimal point (+,-)
"syn match celNumber '[-+]\=\d[[:digit:]]*[eE][\-+]\=\d\+' contained display
"syn match celNumber '\d[[:digit:]]*[eE][\-+]\=\d\+' contained display

" Floating point like number with E and decimal point (+,-)
"syn match celNumber '[-+]\=\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display
"syn match celNumber '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+' contained display

"syn region celString start='"' end='"' contained
"syn region celDesc start='"' end='"'

"syn match celHip '\d\{1,6}' nextgroup=celString
"syn region celDescBlock start="{" end="}" fold transparent contains=ALLBUT,celHip,celString

"syn keyword celBlockCmd RA Dec Distance AbsMag nextgroup=celNumber
"syn keyword celBlockCmd SpectralType nextgroup=celDesc
