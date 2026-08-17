% Quarto class wrapper for classicthesis v4.8.
% Copyright (C) 2025 André Miede and Ivo Pletikosić.
% Wrapper additions Copyright (C) 2026.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{classicthesis}[2026/08/17 v0.1 Quarto class for A Classic Thesis Style]

% Keep original master-document defaults.  Explicit class options override
% these package options, e.g. classoption: [drafting=false].
\PassOptionsToPackage{drafting=true,tocaligned=false,dottedtoc=false,eulerchapternumbers=false,floatperchapter=true,eulermath=false,beramono=true,palatino=true,style=classicthesis}{classicthesis}
\DeclareOption{drafting=true}{\PassOptionsToPackage{drafting=true}{classicthesis}}
\DeclareOption{drafting=false}{\PassOptionsToPackage{drafting=false}{classicthesis}}
\DeclareOption{tocaligned=true}{\PassOptionsToPackage{tocaligned=true}{classicthesis}}
\DeclareOption{tocaligned=false}{\PassOptionsToPackage{tocaligned=false}{classicthesis}}
\DeclareOption{dottedtoc=true}{\PassOptionsToPackage{dottedtoc=true}{classicthesis}}
\DeclareOption{dottedtoc=false}{\PassOptionsToPackage{dottedtoc=false}{classicthesis}}
\DeclareOption{eulerchapternumbers=true}{\PassOptionsToPackage{eulerchapternumbers=true}{classicthesis}}
\DeclareOption{eulerchapternumbers=false}{\PassOptionsToPackage{eulerchapternumbers=false}{classicthesis}}
\DeclareOption{floatperchapter=true}{\PassOptionsToPackage{floatperchapter=true}{classicthesis}}
\DeclareOption{floatperchapter=false}{\PassOptionsToPackage{floatperchapter=false}{classicthesis}}
\DeclareOption{eulermath=true}{\PassOptionsToPackage{eulermath=true}{classicthesis}}
\DeclareOption{eulermath=false}{\PassOptionsToPackage{eulermath=false}{classicthesis}}
\DeclareOption{beramono=true}{\PassOptionsToPackage{beramono=true}{classicthesis}}
\DeclareOption{beramono=false}{\PassOptionsToPackage{beramono=false}{classicthesis}}
\DeclareOption{palatino=true}{\PassOptionsToPackage{palatino=true}{classicthesis}}
\DeclareOption{palatino=false}{\PassOptionsToPackage{palatino=false}{classicthesis}}
\DeclareOption{style=classicthesis}{\PassOptionsToPackage{style=classicthesis}{classicthesis}}
\DeclareOption{style=arsclassica}{\PassOptionsToPackage{style=arsclassica}{classicthesis}}
\DeclareOption{style=linedheaders}{\PassOptionsToPackage{style=linedheaders}{classicthesis}}
\DeclareOption{style=plain}{\PassOptionsToPackage{style=plain}{classicthesis}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrreprt}}
\ProcessOptions\relax

\RequirePackage{silence}
\WarningFilter{scrreprt}{Usage of package `titlesec'}
\WarningFilter{titlesec}{Non standard sectioning command detected}
\LoadClass[twoside,openright,titlepage,numbers=noenddot,headinclude,footinclude,cleardoublepage=empty,abstract=on,BCOR=5mm,paper=a4,fontsize=11pt]{scrreprt}

% Original classicthesis-config.tex package setup.
\PassOptionsToPackage{utf8}{inputenc}
\RequirePackage{inputenc}
\PassOptionsToPackage{T1}{fontenc}
\RequirePackage{fontenc}
\PassOptionsToPackage{ngerman,american}{babel}
\RequirePackage{babel}
\RequirePackage{csquotes}
\RequirePackage[backend=biber,style=numeric-comp,language=auto,sorting=nyt,maxbibnames=10,natbib=true]{biblatex}
\PassOptionsToPackage{fleqn}{amsmath}
\RequirePackage{amsmath}
\RequirePackage{graphicx}
\RequirePackage{scrhack}
\RequirePackage{xspace}
\RequirePackage{etoolbox}
\PassOptionsToPackage{printonlyused,smaller}{acronym}
\RequirePackage{acronym}
\def\bflabel#1{{\acsfont{#1}\hfill}}
\def\aclabelfont#1{\acsfont{#1}}
\RequirePackage{tabularx}
\setlength{\extrarowheight}{3pt}
\newcommand{\tableheadline}[1]{\multicolumn{1}{l}{\spacedlowsmallcaps{#1}}}
\newcommand{\myfloatalign}{\centering}
\RequirePackage{subfig}
\RequirePackage{listings}
\lstset{language=[LaTeX]Tex,morekeywords={PassOptionsToPackage,selectlanguage},keywordstyle=\color{RoyalBlue},basicstyle=\small\ttfamily,commentstyle=\color{Green}\ttfamily,stringstyle=\rmfamily,numbers=none,numberstyle=\scriptsize,stepnumber=5,numbersep=8pt,showstringspaces=false,breaklines=true,belowcaptionskip=.75\baselineskip}
\PassOptionsToPackage{hyperfootnotes=false}{hyperref}
\RequirePackage{classicthesis}

% Keep navigation and list markers aligned with the ClassicThesis chapter
% number colour (CTsemi).
\renewcommand{\labelitemi}{\textcolor{CTsemi}{$\bullet$}}
\lehead{\mbox{\llap{\small\pagemark\kern1em\textcolor{CTsemi}{\vline}}\hspace{0.5em}\textcolor{CTsemi}{\headmark}\hfil}}
\rohead{\mbox{\hfil\textcolor{CTsemi}{\headmark}\hspace{0.5em}\rlap{\small\textcolor{CTsemi}{\vline}\kern1em\pagemark}}}

% Quarto's default LaTeX setup changes KOMA's type area after this class has
% established it. Restore values emitted by the original ClassicThesis.tex.
\newcommand{\classicthesisrestoremargins}{%
  \KOMAoptions{parskip=never}%
  \setlength{\textwidth}{336pt}%
  \setlength{\evensidemargin}{92.58438pt}%
  \setlength{\oddsidemargin}{24.38356pt}%
  \setlength{\textheight}{666.04997pt}%
  \setlength{\topmargin}{-40.58768pt}%
  \setlength{\headheight}{15.95pt}%
  \setlength{\headsep}{20.40001pt}%
  \setlength{\topskip}{11pt}%
  \setlength{\footskip}{47.60002pt}%
  \setlength{\baselineskip}{13.6pt}%
  \setlength{\marginparwidth}{7em}%
  \setlength{\marginparsep}{2em}%
}

\hypersetup{colorlinks=true,linktocpage=true,pdfstartpage=3,pdfstartview=FitV,breaklinks=true,pageanchor=true,pdfpagemode=UseNone,plainpages=false,bookmarksnumbered,bookmarksopen=true,bookmarksopenlevel=1,hypertexnames=true,pdfhighlight=/O,urlcolor=CTurl,linkcolor=CTlink,citecolor=CTcitation,pdfcreator={pdfLaTeX},pdfproducer={LaTeX with hyperref and classicthesis}}

\providecommand{\mLyX}{L\kern-.1667em\lower.25em\hbox{Y}\kern-.125emX\@}
\providecommand{\ie}{i.\,e.}
\providecommand{\Ie}{I.\,e.}
\providecommand{\eg}{e.\,g.}
\providecommand{\Eg}{E.\,g.}

% Metadata commands used by template.tex.
\newcommand{\classicthesissubtitle}[1]{\gdef\ct@subtitle{#1}}
\newcommand{\classicthesislocation}[1]{\gdef\ct@location{#1}}
\newcommand{\classicthesistitlegraphic}[1]{\gdef\ct@titlegraphic{#1}}
\newcommand{\classicthesisdedication}[1]{\gdef\ct@dedication{#1}}
\newcommand{\classicthesisabstract}[1]{\gdef\ct@abstract{#1}}
\newcommand{\classicthesisabstractde}[1]{\gdef\ct@abstractde{#1}}
\newcommand{\classicthesispublications}[1]{\gappto\ct@publications{#1}}
\newcommand{\classicthesisacknowledgments}[1]{\gdef\ct@acknowledgments{#1}}
\newcommand{\classicthesisacronyms}[1]{\gdef\ct@acronyms{#1}}
\newcommand{\classicthesisdeclaration}[1]{\gdef\ct@declaration{#1}}
\newcommand{\classicthesiscolophon}[1]{\gdef\ct@colophon{#1}}
\newcommand{\ct@subtitle}{}
\newcommand{\ct@location}{}
\newcommand{\ct@titlegraphic}{TFZsuperellipse_bw}
\newcommand{\ct@dedication}{}
\newcommand{\ct@abstract}{}
\newcommand{\ct@abstractde}{}
\newcommand{\ct@publications}{}
\newcommand{\ct@acknowledgments}{}
\newcommand{\ct@acronyms}{}
\newcommand{\ct@declaration}{}
\newcommand{\ct@colophon}{}

\makeatletter
\newcommand{\classicthesissetupmetadata}{%
  \hypersetup{pdftitle={\@title},pdfauthor={\@author}}%
}

% Original DirtyTitlepage.tex, Titlepage.tex, and Titleback.tex.
\newcommand{\classicthesistitlepages}{%
  \thispagestyle{empty}%
  \begin{center}
    \spacedlowsmallcaps{\@author}\\ \medskip
    \begingroup\color{CTtitle}\spacedallcaps{\@title}\endgroup
  \end{center}%
  \begin{titlepage}
    \begin{addmargin}[-1cm]{-3cm}
      \begin{center}\large
        \hfill\vfill
        \begingroup\color{CTtitle}\spacedallcaps{\@title}\\ \bigskip\endgroup
        \spacedlowsmallcaps{\@author}
        \vfill
        \includegraphics[width=6cm]{\ct@titlegraphic}\\ \medskip
        \ct@subtitle\\ \medskip
        \@date\ -- \classicthesis
        \vfill
      \end{center}
    \end{addmargin}
  \end{titlepage}%
  \thispagestyle{empty}\hfill\vfill
  \noindent\@author: \textit{\@title,} \ct@subtitle, \textcopyright\ \@date
}

\newcommand{\classicthesisdedicationpage}{%
  \ifdefempty{\ct@dedication}{}{%
    \cleardoublepage\thispagestyle{empty}\phantomsection
    \pdfbookmark[1]{Dedication}{dedication}
    \vspace*{3cm}\begin{center}\ct@dedication\end{center}}
}
\newcommand{\classicthesisabstractpage}{%
  \ifdefempty{\ct@abstract}{}{%
    \cleardoublepage\pdfbookmark[1]{Abstract}{abstract}
    \begingroup\let\clearpage\relax\let\cleardoublepage\relax
    \chapter*{Abstract}\ct@abstract
    \ifdefempty{\ct@abstractde}{}{\vfill\begin{otherlanguage}{ngerman}\pdfbookmark[1]{Zusammenfassung}{zusammenfassung}\chapter*{Zusammenfassung}\ct@abstractde\end{otherlanguage}}%
    \endgroup\vfill}
}
\newcommand{\classicthesispublicationspage}{%
  \ifdefempty{\ct@publications}{}{\cleardoublepage\pdfbookmark[1]{Publications}{publications}\chapter*{Publications}\ct@publications}
}
\newcommand{\classicthesisacknowledgmentspage}{%
  \ifdefempty{\ct@acknowledgments}{}{%
    \cleardoublepage\pdfbookmark[1]{Acknowledgments}{acknowledgments}
    \begingroup\let\clearpage\relax\let\cleardoublepage\relax
    \chapter*{Acknowledgments}\ct@acknowledgments\endgroup}
}

% Original Contents.tex layout. Lists retain their source order and spacing.
\newcommand{\classicthesiscontents}{%
  \cleardoublepage\pagestyle{scrheadings}\pdfbookmark[1]{\contentsname}{tableofcontents}
  \manualmark\markboth{\spacedlowsmallcaps{\contentsname}}{\spacedlowsmallcaps{\contentsname}}
  \tableofcontents
  \automark[section]{chapter}
  \renewcommand{\chaptermark}[1]{\markboth{\spacedlowsmallcaps{##1}}{\spacedlowsmallcaps{##1}}}
  \renewcommand{\sectionmark}[1]{\markright{\textsc{\thesection}\enspace\spacedlowsmallcaps{##1}}}
  \clearpage\begingroup\let\clearpage\relax\let\cleardoublepage\relax
    \pdfbookmark[1]{\listfigurename}{lof}\listoffigures\vspace{8ex}
    \pdfbookmark[1]{\listtablename}{lot}\listoftables\vspace{8ex}
    \pdfbookmark[1]{\lstlistlistingname}{lol}\lstlistoflistings\vspace{8ex}
    \ifdefempty{\ct@acronyms}{}{\pdfbookmark[1]{Acronyms}{acronyms}\markboth{\spacedlowsmallcaps{Acronyms}}{\spacedlowsmallcaps{Acronyms}}\chapter*{Acronyms}\begin{acronym}[UMLX]\ct@acronyms\end{acronym}}
  \endgroup
}
\newcommand{\classicthesismainmatter}{\cleardoublepage\pagestyle{scrheadings}\pagenumbering{arabic}\cleardoublepage}
\newcommand{\classicthesisprintbibliography}{%
  \defbibheading{bibintoc}[\bibname]{\phantomsection\manualmark\markboth{\spacedlowsmallcaps{##1}}{\spacedlowsmallcaps{##1}}\addtocontents{toc}{\protect\vspace{\beforebibskip}}\addcontentsline{toc}{chapter}{##1}\chapter*{##1}}%
  \printbibliography[heading=bibintoc]}
\newcommand{\classicthesisdeclarationpage}{%
  \ifdefempty{\ct@declaration}{}{\cleardoublepage\pdfbookmark[0]{Declaration}{declaration}\chapter*{Declaration}\thispagestyle{empty}\ct@declaration\par\bigskip\noindent\textit{\ct@location, \@date}\smallskip\begin{flushright}\begin{tabular}{m{5cm}}\\ \hline\centering\@author \\ \end{tabular}\end{flushright}}}
\newcommand{\classicthesiscolophonpage}{%
  \ifdefempty{\ct@colophon}{}{\cleardoublepage\pagestyle{empty}\hfill\vfill\pdfbookmark[0]{Colophon}{colophon}\section*{Colophon}\ct@colophon}}
\makeatother
