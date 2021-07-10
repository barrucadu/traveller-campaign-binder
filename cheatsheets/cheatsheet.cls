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

\newenvironment{emphbox}{\begin{Sbox}\begin{minipage}{\columnwidth - 2\fboxsep - 2\fboxrule - \shadowsize}\small}{\end{minipage}\end{Sbox}\shadowbox{\TheSbox}}

\newcommand\dice[1]{\textsc{#1}}
\newcommand{\skillcheck}[2]{\textsc{#1} / #2 check}
\newcommand{\oskillcheck}[3]{\textsc{#1} or \textsc{#2} / #3 check}
\newcommand{\diemod}[1]{\textsc{dm}~#1}

\AtBeginDocument{\footnotesize}
