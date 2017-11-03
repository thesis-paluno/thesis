\def\filedate{2017/11/03}
\def\fileversion{1.0.0}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[\filedate\space v\fileversion\space thesis class]

\RequirePackage{ifthen}
\RequirePackage{iftex}
% Fix incompatibiltiy with LuaTeX
\ifLuaTeX
  \RequirePackage{luatex85}
  \RequirePackage{pdftexcmds}
\fi

\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{report}%
}
\ProcessOptions\relax
\LoadClass{report}

\RequirePackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.4cm]{geometry}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{quoting}
\RequirePackage[threshold=0,thresholdtype=words]{csquotes}
\RequirePackage{setspace} 
\setstretch{1.0}
\RequirePackage[stretch=10,shrink=10]{microtype}
%\RequirePackage{url}
\RequirePackage[below]{placeins}
%\RequirePackage[flushmargin,hang]{footmisc}

\newcommand{\Title}{}
\newcommand{\Subtitle}{}
\newcommand{\TitleFoot}{}
\newcommand{\Thesis}{}
\newcommand{\Author}{}
\newcommand{\City}{}
\newcommand{\Keywords}{}
\newcommand{\ID}{}
\newcommand{\Field}{}
\newcommand{\Supervisor}{}
\newcommand{\ReviewerA}{}
\newcommand{\ReviewerB}{}
\newcommand{\Institution}{}
\newcommand{\Logo}{}
\newcommand{\IDLabel}{}
\newcommand{\FieldLabel}{}
\newcommand{\SupervisorLabel}{}
\newcommand{\ReviewerALabel}{}
\newcommand{\ReviewerBLabel}{}
\newcommand{\IntroductionHead}{Introduction}
\newcommand{\ReferencesHead}{References}
\newcommand{\FiguresHead}{List of Figures}
\newcommand{\TablesHead}{List of Tables}
\newcommand{\ContentsHead}{Table of Contents}
\newcommand{\OnPageText}{on page}
\newcommand{\FigureText}{figure}
\newcommand{\TableText}{table}
\newcommand{\ListingText}{listing}
\newcommand{\ChapterText}{chapter}
\newcommand{\SectionText}{section}

\newcommand{\setTitle}[1]{\renewcommand{\Title}{#1}}
\newcommand{\setSubtitle}[1]{\renewcommand{\Subtitle}{#1}}
\newcommand{\setTitleFoot}[1]{\renewcommand{\TitleFoot}{#1}}
\newcommand{\setThesis}[1]{\renewcommand{\Thesis}{#1}}
\newcommand{\setAuthor}[1]{\renewcommand{\Author}{#1}}
\newcommand{\setCity}[1]{\renewcommand{\City}{#1}}
\newcommand{\setKeywords}[1]{\renewcommand{\Keywords}{#1}}
\newcommand{\setID}[1]{\renewcommand{\ID}{#1}}
\newcommand{\setField}[1]{\renewcommand{\Field}{#1}}
\newcommand{\setSupervisor}[1]{\renewcommand{\Supervisor}{#1}}
\newcommand{\setReviewerA}[1]{\renewcommand{\ReviewerA}{#1}}
\newcommand{\setReviewerB}[1]{\renewcommand{\ReviewerB}{#1}}
\newcommand{\setInstitution}[1]{\renewcommand{\Institution}{#1}}
\newcommand{\setLogo}[1]{\renewcommand{\Logo}{#1}}
\newcommand{\setIDLabel}[1]{\renewcommand{\IDLabel}{#1}}
\newcommand{\setFieldLabel}[1]{\renewcommand{\FieldLabel}{#1}}
\newcommand{\setSupervisorLabel}[1]{\renewcommand{\SupervisorLabel}{#1}}
\newcommand{\setReviewerALabel}[1]{\renewcommand{\ReviewerALabel}{#1}}
\newcommand{\setReviewerBLabel}[1]{\renewcommand{\ReviewerBLabel}{#1}}
\newcommand{\setIntroductionHead}[1]{\renewcommand{\IntroductionHead}{#1}}
\newcommand{\setReferencesHead}[1]{\renewcommand{\ReferencesHead}{#1}}
\newcommand{\setFiguresHead}[1]{\renewcommand{\FiguresHead}{#1}}
\newcommand{\setTablesHead}[1]{\renewcommand{\TablesHead}{#1}}
\newcommand{\setContentsHead}[1]{\renewcommand{\ContentsHead}{#1}}
\newcommand{\setOnPageText}[1]{\renewcommand{\OnPageText}{#1}}
\newcommand{\setFigureText}[1]{\renewcommand{\FigureText}{#1}}
\newcommand{\setTableText}[1]{\renewcommand{\TableText}{#1}}
\newcommand{\setListingText}[1]{\renewcommand{\ListingText}{#1}}
\newcommand{\setChapterText}[1]{\renewcommand{\ChapterText}{#1}}
\newcommand{\setSectionText}[1]{\renewcommand{\SectionText}{#1}}

\DeclareRobustCommand{\thesissetup}[2]{
  \input{#1}
  \RequirePackage[style=#2, sortcites=true, sorting=nyt, backref=false, backend=biber]{biblatex}
  \ExecuteBibliographyOptions{%
   bibencoding=utf8,
   bibwarn=true,
   %firstinits=true,
   %uniquename=init,
   %useprefix=true,
   %doi=false, % No DOI
   %isbn=false, % No ISBN
   %url=false, % No URL
   %eprint=false, % No ePrint
   maxcitenames=2,
   %maxbibnames=200
  }

  \DefineBibliographyStrings{ngerman}{ 
     andothers = {{et\,al\adddot}},
     %backrefpage = {Seite},% originally "cited on page"
     %backrefpages = {Seiten},% originally "cited on pages"
  }

  \PassOptionsToPackage{hyphens}{url}
  \usepackage[pdftex]{hyperref}
    \hypersetup{
      pdftitle={\Title},
      pdfsubject={\Thesis},
      pdfauthor={\Author},
      pdfkeywords={\Keywords},
      pdfcreator={LaTeX}
    }
  \usepackage{doi}

  \RequirePackage[titletoc,toc,title,header,page]{appendix}
  \addto\captionsngerman{
    \renewcommand{\contentsname}{\normalfont Inhaltsverzeichnis}
    \renewcommand{\appendixtocname}{\normalfont\Large\emph{Appendix}}
    \renewcommand{\appendixpagename}{Appendix}
    \renewcommand{\appendixname}{Appendix}
  }
  %\addto\extrasenglish{\languageshorthands{ngerman}}
  %\useshorthands{"}%"
}

\hyphenchar\font=\string"7F%"

\setcounter{tocdepth}{2}

\usepackage[pdftex]{graphicx}
%\RequirePackage{makeidx}
\RequirePackage{amssymb}
\RequirePackage{amstext}
\RequirePackage{amsmath}
\RequirePackage{pifont}
\RequirePackage{ifsym}
%\RequirePackge{tikz}
%\usetikzlibrary{shapes,arrows,positioning}
\RequirePackage{pgfgantt}
\RequirePackage{color}
\RequirePackage{multicol}

%\RequirePackage{fancyhdr}
\RequirePackage{titleps}
\RequirePackage{booktabs}
\RequirePackage{threeparttable}
%\RequirePackage{tabularx}
%\RequirePackage[justification=centering]{caption}
%\RequirePackage[width=.9\textwidth]{caption}
% Combine cells in tables
\RequirePackage{multirow}
\setcounter{totalnumber}{5}

\RequirePackage{listings}

\makeatletter
% Fix incompatibiltiy with LuaTeX
\ifLuaTeX
  \let\pdfshellescape\pdf@shellescape
\fi

% Numbering of sections
%\setcounter{secnumdepth}{2}

% Fix heading for numbered chapters
% Hyperref does not support titlesec
% http://tex.stackexchange.com/a/56025
\def\@makechapterhead#1{%
  %\vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    % Remove Chapter text
    %\ifnum \c@secnumdepth >\m@ne
    %    \huge\bfseries \@chapapp\space \thechapter
    %    \par\nobreak
    %    \vskip 20\p@
    %\fi
    \interlinepenalty\@M
    % Add Chapter number and space
    %\Huge \bfseries #1\par\nobreak
    \LARGE \bfseries \thechapter \space \space \space #1\par\nobreak
    \vskip 40\p@
  }}
% Fix heading for unnumbered chapters                 
\def\@makeschapterhead#1{%
  %\vspace*{50\p@}%
  {\parindent \z@ \raggedright
    \normalfont
    \interlinepenalty\@M
    %\Huge \bfseries #1\par\nobreak
    \LARGE \bfseries #1\par\nobreak
    \vskip 40\p@
  }}


% Supress warning 'Redefining ngerman shorthand' in the context of \pdfstringdef
% http://tex.stackexchange.com/a/193370
\patchcmd{\pdfstringdef}
  {\csname HyPsd@babel@}
  {\let\bbl@info\@gobble\csname HyPsd@babel@}
  {}{}

\renewcommand\tableofcontents{%
  \@starttoc{toc}}

\makeatother


%% Set header and footer
\renewpagestyle{plain}{%
  \setfootrule{0.4pt}% Footer rule
  \sethead[\chaptertitle]% even left
    []% even centre
    []% even right
    {\chaptertitle}% odd left
    {}% odd centre
    {}% odd right
  \setfoot[Titel]% even left
    []% even centre
    [\thepage]% even right
    {Titel}% odd left
    {}% odd centre
    {\thepage}% odd right
}

\pagestyle{plain}

\RequirePackage{blindtext}

%% Example commands
\newcommand{\yessymbol}[0]{\textcolor{green}{\ding{52}}}
\newcommand{\nosymbol}[0]{\textcolor{red}{\ding{56}}}
\newcommand{\nasymbol}[0]{---}

\newcommand{\todo}[1]{\par \textcolor{red}{{TODO: #1}} \typeout{TODO: #1 (\OnPageText \thepage)}}

\newcommand{\hypothesis}[1]{\blockquote{\textit{#1}}}

\newcommand{\english}[1]{\textit{#1}}
\newcommand{\german}[1]{\textit{#1}}
\newcommand{\parenen}[1]{(engl. \textit{#1})}

\newcommand{\pattern}[1]{\texorpdfstring{\textsc{#1}}{#1}}
\newcommand{\subpattern}[1]{\emph{#1}}
%%

\newcounter{cPage}
%% xref command
\newcommand\xref[3]{%
  #2 \ref{#1}%
  \refstepcounter{cPage}\label{current\thecPage}%
  \ifthenelse{\equal{\pageref{#1}}{\pageref{current\thecPage}}}%
  {}{ #3 \pageref{#1}}}%

%% figureref command
\newcommand\figureref[1]{%
  \xref{#1}{\FigureText}{\OnPageText}}%

%% listingref command
\newcommand\listingref[1]{%
  \xref{#1}{\ListingText}{\OnPageText}}%

%% tableref command
\newcommand\tableref[1]{%
  \xref{#1}{\TableText}{\OnPageText}}%

%% sectionref command
\newcommand\sectionref[1]{%
  \xref{#1}{\SectionText}{\OnPageText}}%

%% chapterref command
\newcommand\chapterref[1]{%
  \xref{#1}{\ChapterText}{\OnPageText}}%
