\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cheatsheet}

\LoadClass[10pt]{article}

\RequirePackage[a4paper,left=0.5cm,right=0.5cm,top=0.5cm,bottom=0.5cm]{geometry}

\RequirePackage{booktabs}
\RequirePackage{hyperref}
\RequirePackage{multicol}
\RequirePackage{parskip}
\RequirePackage{tabularx}
\RequirePackage{calc}
\RequirePackage{fancybox}
\RequirePackage[svgnames]{xcolor}
\RequirePackage{titlesec}
\RequirePackage{siunitx}
\RequirePackage{adjustbox}
\RequirePackage{array}

\RequirePackage{fontspec}
\setmainfont{equity}[
  % Files
  Path      = \string~/s/fonts/equity/ ,
  Extension = .otf ,
  % Fonts
  UprightFont     = Equity Text A Regular ,
  UprightFeatures = { SmallCapsFont = Equity Caps A Regular } ,
  BoldFont        = Equity Text A Bold ,
  BoldFeatures    = { SmallCapsFont = Equity Caps A Bold } ,
  ItalicFont      = Equity Text A Italic ,
  BoldItalicFont  = Equity Text A Bold Italic ,
  % Features
  Numbers = OldStyle ]

\titlespacing{\section}{0pt}{0pt}{4pt plus 2pt minus 2pt}
\titlespacing{\subsection}{0pt}{6pt plus 4pt minus 2pt}{4pt plus 2pt minus 2pt}

\newcommand{\sectioncolorbox}[1]{\colorbox{Black}{\parbox{\linewidth}{\small\strut\centering\color{white} #1}}}
\titleformat{\section}[display]{\bfseries}{}{0pt}{\sectioncolorbox}

\newcommand{\subsectioncolorbox}[1]{\colorbox{Grey!40}{\parbox{\linewidth}{\small\strut #1}}}
\titleformat{\subsection}[display]{\bfseries}{}{0pt}{\subsectioncolorbox}

\setcounter{secnumdepth}{0}

\pagestyle{empty}
\nonfrenchspacing

\setlength{\parskip}{\medskipamount}
\newcommand{\@minipagerestore}{\setlength{\parskip}{\medskipamount}}

% Y = centred X
\newcolumntype{Y}{>{\centering\arraybackslash}X}

% R = rotated l
\newcolumntype{R}[2]{>{\adjustbox{angle=#1,lap=\width-(#2)}\bgroup}l<{\egroup}}
\newcommand*\rot{\multicolumn{1}{R{45}{1em}}}

\newenvironment{emphbox}{\begin{Sbox}\begin{minipage}{\columnwidth - 2\fboxsep - 2\fboxrule - \shadowsize}\small}{\end{minipage}\end{Sbox}\shadowbox{\TheSbox}}

\newcommand\dice[1]{\textsc{#1}}
\newcommand{\chrcheck}[2][]{#1\unskip\space\textsc{#2} check}
\newcommand{\skillcheck}[2][]{#1\unskip\space#2 check}
\newcommand{\chrskillcheck}[3][]{#1\unskip\space\textsc{#2} / #3 check}
\newcommand{\diemod}[1]{\textsc{dm}~\mbox{#1}}

\AtBeginDocument{\footnotesize}
