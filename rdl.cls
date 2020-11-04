% -----------------------------------------------------------------------
% rdl.cls
% Based on pi1-muster.tex and defs.tex used before 2003 for
% PI 1 in Bremen.
% Adapted by Thomas Röfer
% Adapted by Andreas Bresser for Robot Design Lab

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rdl}
\LoadClass[11pt,a4paper,twoside]{article}
\usepackage[utf8]{inputenc}
\usepackage[english]{babel}
\usepackage{graphicx}
\usepackage{moreverb}
\usepackage{fancyhdr}
\usepackage{amsmath}
\usepackage{listings}
\usepackage{xcolor}
\usepackage[hidelinks,colorlinks=true]{hyperref}
\lstset{language=python,
                basicstyle=\ttfamily,
                keywordstyle=\color{blue}\ttfamily,
                stringstyle=\color{red}\ttfamily,
                commentstyle=\color{gray}\ttfamily,
                breaklines=true,
                morecomment=[l][\color{magenta}]{\#},
                numbers=left,
                showstringspaces=false
}

% -----------------------------------------------------------------------
% Page layout

% enlarge page
\setlength{\textwidth}{16cm}
\setlength{\topmargin}{-1cm}
\setlength{\evensidemargin}{0cm}
\setlength{\oddsidemargin}{0cm}
\setlength{\textheight}{24cm}

% skip between paragraphs
\setlength{\parskip}{1ex}
% ... and no indentation at start of a new paragraph
\setlength{\parindent}{0ex}

\newcommand{\thissemester}{WiSe 2020/2021}
\newcommand{\thistitle}{Robot Design Lab}
\newcommand{\thistype}{Worksheet}

\pagestyle{fancy}
\thispagestyle{empty}

% -----------------------------------------------------------------------
% Main macros

% Parameters:
% #1: Number of the current worksheet 
% #2: Hand-in date the worksheet
% #3: Names of the tutors
% #4: Group Number
% #5: Name of the first group member
% #6: Name of the second group member
% #7: Name of the third  group member
% #8: Name of the fourth  group member

\renewcommand{\maketitle}[8]
          {\@maketitle{#1}{#2}{#3}{#4}{#5}{#6}{#7}{#8}}
\renewcommand\thesection{\arabic{section}}
\newcommand\skipsection{\stepcounter{section}}
%when using hyperref, our \maketitle gets replaced with a version
%adding a parameter in front, then calling us.
\newcommand\makeheading[3]{\@maketitle{#1}{#2}{#3}}

% -----------------------------------------------------------------------
% Misc macros

\newcommand{\grenzop}[3]{\mathop{#1}\limits^{#2}_{#3}}
\newcommand{\langrechtspfeil}[2]{\grenzop{\longrightarrow}{#1}{#2}}
\newcommand{\bob}[0]{\hspace*{\fill}$\Box$}

% -----------------------------------------------------------------------

\setlength{\headheight}{14pt}

\renewcommand{\@maketitle}[8]
{
    \begin{tabular}[t]{lr}
      \begin{tabular}[t]{l}
        \begin{tabular}[t]{l@{\hskip 10mm}l}
            \thistitle & \thissemester \hspace{4ex} \\
            Tutor: {#3} & Group: {#4}\\
        \end{tabular} \vspace{5mm} \\
        {\Huge\sf \thistype {#1} } \\[1.5ex]
        {\Large Hand-in date: {#2}} \\[1ex]
      \end{tabular}
      &
      \begin{tabular}[t]{l}
          {#5}\\
          {#6}\\
          {#7}\\
          {#8}
      \end{tabular} \\[2ex]
    \end{tabular}\\
    \rule{\linewidth}{1pt}

% -----------------------------------------------------------------------
% Create headings (Thanks to Elmar Loos)

    \fancyhead{} %clear all fields
    \fancyhead[LO,RE]{Robot Design Lab, \thissemester}
    \fancyhead[RO,LE]{Tutor: {#3}}
    \fancyfoot{} %clear all fields
    \fancyfoot[RO,LE]{\thepage}
}

\endinput
