%---------------------------------------------------------------
% thesis class by Jan Caha, 2013
%---------------------------------------------------------------

%-------------------------- class definition ---------------------
\ProvidesClass{thesisKGI}[2013/02/10 thesis class]
\NeedsTeXFormat{LaTeX2e}

%------------------------------ article -----------------------
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper]{article}

%o kolik odsazuju první řádek odstavce
\parindent=0.6cm
%kolik vynechat mezi odstavcema
\parskip=1ex

%číslování stránek arabské
\pagenumbering{arabic}

%---------------------------------------------------- 
%nastavení velice citlivé kontroly na vdovy a sirotky
%---------------------------------------------------- 
\widowpenalty=2000
\clubpenalty=1000

%definice novým proměnných
\def\advisor#1{\gdef\@advisor{#1}}
\def\thesistype#1{\gdef\@thesistype{#1}}
%:-------------------------- packages for fancy things -----------------------

%package pro okraje podle šablony
\RequirePackage[top=2.5cm, bottom=2.5cm, left=3.25cm, right=2.5cm]{geometry}

%package pro jeden a půl řádkování a následně příkaz na nastavení
\RequirePackage{setspace}
\onehalfspacing

%package  aby byly všechny první řádky odsazené
%\RequirePackage{indentfirst}

%package pro utf-8 kódování a správné znaky ve výstupním pdf
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{cmap}
\RequirePackage{lmodern}

%package pro sazbu matematických vzorců a dalších nezbytností týkajících se matematické sazby
\RequirePackage{amsthm}
\RequirePackage{amsbsy}
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{bbm}

%package na nastavení vycentrování popisků
\RequirePackage[center]{caption}

%package na práci s odkazama
\RequirePackage[usenames,dvipsnames]{color}
%povypíná barvy odkazů u výstupního pdfka
\RequirePackage[citebordercolor={1 1 1}, linkbordercolor={1 1 1}, urlbordercolor={1 1 1}]{hyperref}

%package na jednodušší sázení tabulek se spojenými řádky
\RequirePackage{multirow}

%package pro tvorbu více obrazků vedle sebe atd.
%\RequirePackage{subfig}
\RequirePackage{subcaption}

%package pro lepší možnosti číslování odrážek
\RequirePackage{enumerate}

%package pro řádkové seznamy
\RequirePackage{paralist}

%package s českým slovníkem pro dělení slov apod.
\RequirePackage[czech]{babel}

%package pro grafiku, umí vkládat veškeré formáty - případné eps konvertuje do pdf
\RequirePackage[pdftex]{graphicx}
\RequirePackage{float}

%\usepackage{glossary}

%\usepackage[table]{xcolor}
%package pro tvorbu seznamu zkratek
\RequirePackage{glossaries}
\makeglossaries

%package pro citace ve tvaru autor-rok
\RequirePackage[authoryear]{natbib}

%package pro tvorbu vektorové grafiky
\RequirePackage{tikz}

%:-------------------------- Úpravy češtiny -----------------------
%=======================================================
%úpravy jmen kapitol
%=======================================================
%přejmenuje Reference na Literaturu
 \addto\captionsczech{
   \renewcommand{\refname}{LITERATURA}
 }
%přejmenuje na Seznam zkratek
\addto\captionsczech{
  \renewcommand{\glossaryname}{SEZNAM POUŽITÝCH ZKRATEK}
}

%=======================================================
%úprava formátování odkazů ---- doporučení na využítí
%\odkazObrazek, \odkazVzorec, \odkazTabulka místo \autoref
%=======================================================
% \Autoref is for the beginning of the sentence
\let\orgautoref\autoref
\providecommand{\Autoref}[1]{\def\equationautorefname{Rovnice}\def\tableautorefname{Tabulka}
\def\figureautorefname{Obrázek}\def\subfigureautorefname{Obrázek}\orgautoref{#1}}
% \autoref is used inside the sentence to produce Fig., and Eq. for figures, subfigures, and equations
\renewcommand{\autoref}[1]{\def\equationautorefname{rov.}\def\tableautorefname{tab.}
\def\figureautorefname{obr.}\def\subfigureautorefname{obr.}\orgautoref{#1}}
%=======================================================
\newcommand\transl[1]{(angl. #1)}
\newcommand\tzv{\mbox{{tzv. }}}
\newcommand\napr{\mbox{{např. }}}
\newcommand\Napr{\mbox{{Např. }}}
\newcommand\viz{\mbox{{viz }}}
\newcommand\atd{\mbox{{atd. }}}
\newcommand\tzn{\mbox{{tzn. }}}
\newcommand\resp{\mbox{{resp. }}}
\newcommand\aj{\mbox{{aj. }}}

\newcommand{\odkazObrazek}[1]{(\viz obr. \ref{#1})}
\newcommand{\odkazKapitola}[1]{\ref{#1}}
\newcommand{\odkazVzorec}[1]{(\viz \eqref{#1})}
\newcommand{\odkazTabulka}[1]{(\viz tab. \ref{#1})}

%:--------------------------Nové příkazy -----------------------
%=======================================================
%mezery a jiné prostorové formátování
%=======================================================
\newcommand\vf{\vfill}
\newcommand\vs{\vspace{1em}}
\newcommand\hs{\hspace{1em}}
\newcommand\cg{\clearpage}

%:-------------------------- title page layout -----------------------

%nové prostředí definující samostatnou stránku
\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}

% MAKE TITLE
\renewcommand{\maketitle}{
\begin{alwayssingle}
		\thispagestyle{empty}
		\begin{center}
		
		\begingroup
			\textbf{
				\fontsize{14pt}{14pt}\selectfont
				{Univerzita Palackého v Olomouci}\\
				{Přírodovědecká fakulta}\\
				{Katedra geoinformatiky}
			}
		\endgroup
		
		\vspace{7em}
		
		\begingroup
			\textbf{
				\fontsize{14pt}{14pt}\selectfont
				\@author
			}
		\endgroup
		
		\vspace{5em}
		
		\begingroup
			\textbf{
				\fontsize{20pt}{20pt}\selectfont
				\@title
			}
		\endgroup
		
		\vspace{2em}
		
		\begingroup
			\textbf{
				\fontsize{14pt}{14pt}\selectfont
				\@thesistype
			}
		\endgroup
		
		\vfill
		
		\begingroup
			\textbf{
				\fontsize{14pt}{14pt}\selectfont
				{Vedoucí práce: \@advisor}
			}
		\endgroup
		
		\vspace{5em}
		
		\begingroup
			\textbf{
				\fontsize{14pt}{14pt}\selectfont
				{Olomouc \the\year}
			}
		\endgroup
		
		\vspace{1em}
		
		\end{center}
\end{alwayssingle}
}

% MAKE TABLE OF CONTENT
\newcommand{\makeTableOfContent}[1]{
\begin{alwayssingle}
		\pagestyle{plain}
		\setcounter{tocdepth}{#1} 
		\tableofcontents
\end{alwayssingle}
}

% MAKE GLOSSARY
\newcommand{\makeGlossary}{
\begin{alwayssingle}
		\pagestyle{plain}
		\addcontentsline{toc}{section}{SEZNAM POUŽITÝCH ZKRATEK} 
		\printglossary[nonumberlist=true]
\end{alwayssingle}
}

% MAKE BIBLIOGRAPHY
\newcommand{\makeBibliography}[1]{
\begin{alwayssingle}
		\pagestyle{plain}
		\addcontentsline{toc}{section}{LITERATURA} 
		\bibliography{#1}
\end{alwayssingle}
}

% MAKE DECLARATION
\newenvironment{declaration}
{\begin{alwayssingle}
  \pagestyle{empty}
  \vspace*{\fill}
  \parindent=0.0cm
 }
{\vspace*{5pc}\\
V Olomouci \today \hspace*{13em} \@author
\end{alwayssingle}}

% MAKE DEDICATION
\newenvironment{dedication}
{\begin{alwayssingle}
  \pagestyle{empty}
  \vspace*{\fill}
  \parindent=0.0cm
  \
  }
{\end{alwayssingle}}

% MAKE SUMMARY
\newenvironment{summary}{
\begin{alwayssingle}
  \pagestyle{plain}
  \section*{SUMMARY}
  \addcontentsline{toc}{section}{SUMMARY}
  }
{\end{alwayssingle}}

\newenvironment{prilohy}{
\begin{alwayssingle}
  \pagestyle{plain}
  \section*{SEZNAM PŘÍLOH} 
  }
{\end{alwayssingle}}
