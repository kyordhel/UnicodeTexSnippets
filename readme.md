# Unicode Templates for LaTeX

Writing simultaneously in several languages in LaTeX can produce headaches. Nonetheless, when updated and properly set, it becomes pretty straightforward.
In this repo I explain (barely) how to write in (at least) 13 different languages other than English by adding less than 10 lines of code. Snippet is below

Of course, compatibility with all packages is not guaranteed.

# Snippet
```LaTeX
    \documentclass{article}
    \usepackage[utf8]{inputenc}
    \usepackage[LFE,LAE,T2A,T1]{fontenc}
    \usepackage[english,arabic,greek,russian,polish]{babel}
    \usepackage{arabtex} % Required for arab
    \usepackage{CJKutf8} % Required for Chinese, Japanese and Korean
    \newcommand{\textcn}[1]{\begin{CJK}{UTF8}{gbsn}#1\end{CJK}}
    \newcommand{\textjp}[1]{\begin{CJK}{UTF8}{min}#1\end{CJK}}
    \newcommand{\textko}[1]{\begin{CJK}{UTF8}{mj}#1\end{CJK}}
    
    \begin{document}
    \selectlanguage{english}% Set English as default
    \centering
    \begin{tabular}{c c}
    	Arabic     & \foreignlanguage{arabic}{هذا عربي} \\
    	Chinese    & \textcn{这是汉语} \\
    	French     & C'est français \\
    	German     & Einige große Wörter auf Deutsch \\
    	Greek      & \foreignlanguage{greek}{αυτό είναι ελληνικό} \\
    	Japanese   & \textjp{これは日本語です} \\
    	Korean     & \textko{이것은 한국이다.} \\
    	Norwegian  & Norsk er søtt \\
    	Polish     & Niektóre słowa po polsku \\
    	Portuguese & Português não é espanhol \\
    	Russian    & \foreignlanguage{russian}{Это русский} \\
    	Spanish    & Esto es español \\
    	Swedish    & Några ord på svenska \\
    \end{tabular}
    \end{document}
```

It looks like this:
![Example](https://raw.githubusercontent.com/kyordhel/UnicodeTexSnippets/master/example.png)



# Templates
## Arabic
```LaTeX
    % arabiyyah.tex
    \documentclass{article}
    \usepackage[utf8]{inputenc}
    \usepackage[T1,LFE,LAE]{fontenc}
    \usepackage[english,arabic]{babel}
    \usepackage{arabtex} % Required for arab
    \begin{document}
    \selectlanguage{english}% Set English as default
    This is English
    
    \foreignlanguage{arabic}{هذا عربي}
    \end{document}
```
[View tex file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/arabiyyah.tex)

[View compiled pdf file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/arabiyyah.pdf)

## Chinese
```LaTeX
    % hanyu.tex
    \documentclass{article}
    \usepackage[utf8]{inputenc}
    \usepackage[T1]{fontenc}
    \usepackage{CJKutf8} % Required for Chinese, Japanese and Korean
    \newcommand{\textcn}[1]{\begin{CJK}{UTF8}{gbsn}#1\end{CJK}}
    \begin{document}
    This is english
    
    \textcn{这是汉语}
    \end{document}
```
[View tex file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/hanyu.tex)

[View compiled pdf file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/hanyu.pdf)


## Greek
```LaTeX
    % ellinika.tex
    \documentclass{article}
    \usepackage[utf8]{inputenc}
    \usepackage[T1,T2A]{fontenc}
    \usepackage[english,greek]{babel}
    \begin{document}
    \selectlanguage{english}% Set English as default
    This is English \foreignlanguage{greek}{α}

    \selectlanguage{greek}% Set Greek as default
    αυτό είναι ελληνικό \foreignlanguage{english}{a}
    \end{document}
```
[View tex file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/ellinika.tex)

[View compiled pdf file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/ellinika.pdf)

## Korean
```LaTeX
    % hangugeo.tex
    \documentclass{article}
    \usepackage[utf8]{inputenc}
    \usepackage[T1]{fontenc}
    \usepackage{CJKutf8} % Required for Chinese, Japanese and Korean
    \newcommand{\textko}[1]{\begin{CJK}{UTF8}{mj}#1\end{CJK}}
    \begin{document}
    This is english
    
    \textko{이것은 한국이다.}
    \end{document}
```
[View tex file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/hangugeo.tex)

[View compiled pdf file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/hangugeo.pdf)

## Japanese
```LaTeX
    % nihongo.tex
    \documentclass{article}
    \usepackage[utf8]{inputenc}
    \usepackage[T1]{fontenc}
    \usepackage{CJKutf8} % Required for Chinese, Japanese and Korean
    \newcommand{\textjp}[1]{\begin{CJK}{UTF8}{min}#1\end{CJK}}
    \begin{document}
    This is english
    
    \textjp{これは日本語です}
    \end{document}
```
[View tex file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/nihongo.tex)

[View compiled pdf file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/nihongo.pdf)

## Russian
```LaTeX
    % russkiy.tex
    \documentclass{article}
    \usepackage[utf8]{inputenc}
    %Trick: Place T1 before T2A
    \usepackage[T1,T2A]{fontenc}
    \begin{document}
    This is English
    
    Это русский
    \end{document}
```
[View tex file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/russkiy.tex)

[View compiled pdf file](https://github.com/kyordhel/UnicodeTexSnippets/blob/master/templates/russkiy.pdf)
