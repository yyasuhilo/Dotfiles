"set background=light

"hi clear
"if exists("syntax_on")
"	syntax reset
"endif
"syn sync maxlines=200
"syn sync minlines=50
syn cluster texMathZoneGroup  add=texSupSubscript
syn cluster texMathMatchGroup add=texSupSubscript
syn region texSupSubscript start=/\^{\|_{/ end='}' contains=texMathSpecial,texGreek,texSupSubscript

syn cluster texMathMatchGroup add=texMathEqSeparator
syn cluster texMathZoneGroup add=texMathEqSeparator
syn match texMathEqSeparator "&"
syn match texMathEqSeparator "\\\\"
syn match texMathEqSeparator "\\notag"
syn match texMathEqSeparator "\\label"

syn cluster texMathMatchGroup add=texMathBeginEnd
syn cluster texMathZoneGroup add=texMathBeginEnd
syn match texMathBeginEnd "\\begin\>"
syn match texMathBeginEnd "\\end\>"

syn cluster texMathMatchGroup add=texMathBeginEnd2
syn cluster texMathZoneGroup add=texMathBeginEnd2
syn match texMathBeginEnd2 "\\begin{align}"
syn match texMathBeginEnd2 "\\end{align}"
syn match texMathBeginEnd2 "\\begin{align\*}"
syn match texMathBeginEnd2 "\\end{align\*}"
syn match texMathBeginEnd2 "\\begin{equation}"
syn match texMathBeginEnd2 "\\end{equation}"
syn match texMathBeginEnd2 "\\begin{equation\*}"
syn match texMathBeginEnd2 "\\end{equation\*}"
syn match texMathBeginEnd2 "\\begin{eqnarray}"
syn match texMathBeginEnd2 "\\end{eqnarray}"
syn match texMathBeginEnd2 "\\begin{eqnarray\*}"
syn match texMathBeginEnd2 "\\end{eqnarray\*}"

syn cluster texMathMatchGroup add=texMathSpecial
syn cluster texMathZoneGroup add=texMathSpecial
"== Math Big Operators 
syn match texMathSpecial "\\int\>"
syn match texMathSpecial "\\iint\>"
syn match texMathSpecial "\\iiint\>"
syn match texMathSpecial "\\iiiint\>"
syn match texMathSpecial "\\oint\>"
syn match texMathSpecial "\\sum\>"
syn match texMathSpecial "\\prod\>"
syn match texMathSpecial "\\bigcap\>"
syn match texMathSpecial "\\bigcup\>"
syn match texMathSpecial "\\bigodot\>"
syn match texMathSpecial "\\bigotimes\>"
syn match texMathSpecial "\\bigoplus\>"
"== Math Font
syn match texMathSpecial "\\cal\>"
syn match texMathSpecial "\\mathbb\>"
syn match texMathSpecial "\\mathrm\>"
syn match texMathSpecial "\\mathbf\>"
syn match texMathSpecial "\\mathit\>"
syn match texMathSpecial "\\mathcal\>"
syn match texMathSpecial "\\mathsf\>"
syn match texMathSpecial "\\mathtt\>"
syn match texMathSpecial "\\mathscr\>"
syn match texMathSpecial "\\mathfrak\>"
syn match texMathSpecial "\\bm\>"
syn match texMathSpecial "\\text\>"
syn match texMathSpecial "\\intertext\>"
syn match texMathSpecial "\\displaystyle\>"
"== Math Accent
syn match texMathSpecial "\\hat\>"
syn match texMathSpecial "\\Hat\>"
syn match texMathSpecial "\\check\>"
syn match texMathSpecial "\\Check\>"
syn match texMathSpecial "\\breve\>"
syn match texMathSpecial "\\Breve\>"
syn match texMathSpecial "\\acute\>"
syn match texMathSpecial "\\Acute\>"
syn match texMathSpecial "\\grave\>"
syn match texMathSpecial "\\Grave\>"
syn match texMathSpecial "\\tilde\>"
syn match texMathSpecial "\\Tilde\>"
syn match texMathSpecial "\\bar\>"
syn match texMathSpecial "\\Bar\>"
syn match texMathSpecial "\\vec\>"
syn match texMathSpecial "\\Vec\>"
syn match texMathSpecial "\\dot\>"
syn match texMathSpecial "\\Dot\>"
syn match texMathSpecial "\\ddot\>"
syn match texMathSpecial "\\Ddot\>"
syn match texMathSpecial "\\underline\>"
syn match texMathSpecial "\\overline\>"
syn match texMathSpecial "\\underbrace\>"
syn match texMathSpecial "\\overbrace\>"
syn match texMathSpecial "\\widehat\>"
syn match texMathSpecial "\\widetilde\>"
syn match texMathSpecial "\\overrightarrow\>"
syn match texMathSpecial "\\overleftarrow\>"
"== Math Functions
syn match texMathSpecial "\\sin\>"
syn match texMathSpecial "\\cos\>"
syn match texMathSpecial "\\tan\>"
syn match texMathSpecial "\\sinh\>"
syn match texMathSpecial "\\cosh\>"
syn match texMathSpecial "\\tanh\>"
syn match texMathSpecial "\\arcsin\>"
syn match texMathSpecial "\\arccos\>"
syn match texMathSpecial "\\arctan\>"
syn match texMathSpecial "\\frac\>"
syn match texMathSpecial "\\tfrac\>"
syn match texMathSpecial "\\dfrac\>"
syn match texMathSpecial "\\cfrac\>"
syn match texMathSpecial "\\sqrt\>"
syn match texMathSpecial "\\log\>"
syn match texMathSpecial "\\ln\>"
syn match texMathSpecial "\\exp\>"
syn match texMathSpecial "\\arg\>"
syn match texMathSpecial "\\lim\>"
syn match texMathSpecial "\\liminf\>"
syn match texMathSpecial "\\limsup\>"
syn match texMathSpecial "\\max\>"
syn match texMathSpecial "\\min\>"
syn match texMathSpecial "\\det\>"
syn match texMathSpecial "\\dim\>"
syn match texMathSpecial "\\ker\>"
syn match texMathSpecial "\\dagger\>"
syn match texMathSpecial "\\ddagger\>"
"== Math Constant
syn match texMathSpecial "\\infty\>"
syn match texMathSpecial "\\partial\>"
syn match texMathSpecial "\\hbar\>"
syn match texMathSpecial "\\Re\>"
syn match texMathSpecial "\\Im\>"
syn match texMathSpecial "\\empryset\>"
syn match texMathSpecial "\\nabla\>"
syn match texMathSpecial "\\triangle\>"
syn match texMathSpecial "\\forall\>"
syn match texMathSpecial "\\exists\>"
syn match texMathSpecial "\\neg\>"
"== Math Ligature
syn match texMathSpecial "\\quad\>"
syn match texMathSpecial "\\qquad\>"
syn match texMathSpecial "\\mbox\>"
syn match texMathSpecial "\\because\>"
syn match texMathSpecial "\\therefore\>"
"== Math Binary Operator
syn match texMathSpecial "="
syn match texMathSpecial "_"
syn match texMathSpecial "\^"
syn match texMathSpecial "\\pm\>"
syn match texMathSpecial "\\mp\>"
syn match texMathSpecial "\\times\>"
syn match texMathSpecial "\\otimes\>"
syn match texMathSpecial "\\div\>"
syn match texMathSpecial "\\ast\>"
syn match texMathSpecial "\\star\>"
syn match texMathSpecial "\\cdot\>"
syn match texMathSpecial "\\equiv\>"
syn match texMathSpecial "\\sim\>"
syn match texMathSpecial "\\simeq\>"
syn match texMathSpecial "\\cong\>"
syn match texMathSpecial "\\neq\>"
syn match texMathSpecial "\\approx\>"
syn match texMathSpecial "\\propto\>"
syn match texMathSpecial "\\not\>"
syn match texMathSpecial "\\le\>"
syn match texMathSpecial "\\leq\>"
syn match texMathSpecial "\\ll\>"
syn match texMathSpecial "\\ge\>"
syn match texMathSpecial "\\geq\>"
syn match texMathSpecial "\\gg\>"
syn match texMathSpecial "\\cap\>"
syn match texMathSpecial "\\cup\>"
syn match texMathSpecial "\\subset\>"
syn match texMathSpecial "\\subseteq\>"
syn match texMathSpecial "\\supset\>"
syn match texMathSpecial "\\supseteq\>"
syn match texMathSpecial "\\in\>"
syn match texMathSpecial "\\ni\>"
syn match texMathSpecial "\\notin\>"
"== Math Dots
syn match texMathSpecial "\\dots\>"
syn match texMathSpecial "\\cdots\>"
syn match texMathSpecial "\\ddots\>"
syn match texMathSpecial "\\vdots\>"
"== Math Arrows
syn match texMathSpecial "\\uparrow\>"
syn match texMathSpecial "\\Uparrow\>"
syn match texMathSpecial "\\downarrow\>"
syn match texMathSpecial "\\Downarrow\>"
syn match texMathSpecial "\\updownarrow\>"
syn match texMathSpecial "\\Updownarrow\>"
syn match texMathSpecial "\\leftarrow\>"
syn match texMathSpecial "\\Leftarrow\>"
syn match texMathSpecial "\\longleftarrow\>"
syn match texMathSpecial "\\Longleftarrow\>"
syn match texMathSpecial "\\gets\>"
syn match texMathSpecial "\\rightarrow\>"
syn match texMathSpecial "\\Rightarrow\>"
syn match texMathSpecial "\\longrightarrow\>"
syn match texMathSpecial "\\Longrightarrow\>"
syn match texMathSpecial "\\to\>"
"== Math Delimiters
syn match texMathSpecial "\\{\|\\}"
syn match texMathSpecial "(\|)"
syn match texMathSpecial "\[\|\]"
"== Math Original
syn match texMathSpecial "\\ave\>"
syn match texMathSpecial "\\Tr\>"
syn match texMathSpecial "\\Re\>"
syn match texMathSpecial "\\Im\>"
syn match texMathSpecial "\\ket\>"
syn match texMathSpecial "\\bra\>"
syn match texMathSpecial "\\braket\>"
syn match texMathSpecial "\\kket\>"
syn match texMathSpecial "\\bbra\>"
syn match texMathSpecial "\\bbrakket\>"

"syn cluster texMathMatchGroup add=texSuperscript
"syn cluster texMathZoneGroup add=texSuperscript
"syn cluster texMathMatchGroup add=texSubscript
"syn cluster texMathZoneGroup add=texSubscript


"===== Highlight =====================================
"hi Normal guifg=black guibg=cornsilk
hi Normal ctermfg=black ctermbg=lightgray
hi texComment ctermfg=darkgray ctermbg=lightgray guifg=darkgray guibg=cornsilk
hi texDocZone ctermfg=black ctermbg=lightgray guifg=black guibg=cornsilk "地の文
hi texAbstract ctermfg=black ctermbg=lightgray guifg=black guibg=cornsilk
hi texPartZone ctermfg=black ctermbg=lightgray guifg=black guibg=cornsilk
hi texChapterZone ctermfg=black ctermbg=lightgray guifg=black guibg=cornsilk "章内での地の文
hi texSectionZone ctermfg=black ctermbg=lightgray guifg=black guibg=cornsilk "節内での地の文
hi texSubSectionZone ctermfg=black ctermbg=lightgray guifg=black guibg=cornsilk "小節内での地の文
hi texSubSubSectionZone ctermfg=black ctermbg=lightgray guifg=black guibg=cornsilk "小小節内での地の文
hi texParaZone ctermfg=black ctermbg=lightgray guifg=black guibg=cornsilk "パラグラフ内での地の文
hi Cursor ctermfg=black ctermbg=magenta guifg=black guibg=magenta "カーソル
hi matchParen ctermfg=black ctermbg=cyan guifg=black guibg=cyan "対応する括弧

hi TexSection ctermfg=darkred ctermbg=black guifg=orange guibg=black "\begin{section},\begin{document}, etc.
hi texMath ctermfg=lightgray ctermbg=black guifg=ghostwhite guibg=black "数式環境内の普通の文字
hi texMathZoneX ctermfg=lightgray ctermbg=black guifg=ghostwhite guibg=black "$$内での括弧
hi texDelimiter ctermfg=darkcyan ctermbg=black guifg=darkseagreen guibg=black "中括弧と$
hi Delimiter ctermfg=darkcyan ctermbg=black guifg=darkseagreen guibg=black "^{}と_{}
hi texStatement ctermfg=darkyellow ctermbg=black guifg=yellow guibg=black "BackSlashから始まる文字, \alpha,\beta,...
hi texGreek ctermfg=lightgray ctermbg=black guifg=ghostwhite guibg=black "数式内のギリシア文字
hi texMathDelim ctermfg=lightgray ctermbg=black guifg=ghostwhite guibg=black "\big[など 
hi texSupSubscript ctermfg=lightgray ctermbg=black guifg=ghostwhite guibg=black "上付き下付き文字領域に色をつける
hi texMathBeginEnd ctermfg=green ctermbg=black guifg=green guibg=black "\begin,\end
hi texMathBeginEnd2 ctermfg=darkblue ctermbg=black guifg=royalblue guibg=black "\begin,\end
hi texMathSpecial ctermfg=lightgray ctermbg=black guifg=ghostwhite guibg=black
hi texMathEqSeparator ctermfg=red ctermbg=black guifg=red guibg=black "&と改行

"===== keymapping
set spell
"syntax sync minlines=100 "syntaxするために遡る最低の行数
"syntax sync maxlines=500 "同最高の行数
syntax sync fromstart
