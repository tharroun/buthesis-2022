%==============================================================================
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{buthesis}[2022/07/11 Brock Document LaTeX class]
%==============================================================================


%==============================================================================
\RequirePackage{iftex} % Provides: \RequireLuaTeX
\RequireLuaTeX
%==============================================================================


%==============================================================================
\LoadClass[letterpaper,12pt,oneside]{article}
%==============================================================================


%==============================================================================
\RequirePackage{fancyhdr}
\RequirePackage[paper=letterpaper,left=1.25in,right=1.25in,top=1in,bottom=1in]{geometry}
%-------------- Setup page style-----------------------------------------------
\pagestyle{fancy}
\fancyhf{}
%------------ Rule in header and foot -----------------------------------------
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\footrulewidth}{0pt}
%-------------- Setup default spacing rules------------------------------------
\RequirePackage{setspace}
\renewcommand{\linespread}{1.0} 
\renewcommand{\baselinestretch}{1.0} % Line spacing
\setlength{\headheight}{1.5em}       % Make room for header
%==============================================================================


%==============================================================================
\RequirePackage{graphicx}
%--------------- Positioning for the Brock logo overlay -----------------------
\RequirePackage[absolute,overlay]{textpos}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
%==============================================================================


%==============================================================================
%--------------- USE LUALATEX!!!!!! -------------------------------------------
\RequirePackage{amsmath}
\RequirePackage{stix2}
\RequirePackage{siunitx}
%==============================================================================


%==============================================================================
\RequirePackage[table]{xcolor}
\definecolor{BrickRed}{RGB}{182, 32, 28}      % Hyperlinks and table header row
\definecolor{Gray}{RGB}{91, 103, 112}        % Front page
%==============================================================================


%==============================================================================
\RequirePackage{booktabs}  % 
%==============================================================================


%==============================================================================
\RequirePackage[
backend=biber,
style=phys,
sorting=none,
defernumbers=true,
biblabel=brackets
]{biblatex}
\RequirePackage{csquotes}
% -----------------------------------------------------------------------------
\RequirePackage{etoolbox}
\newtoggle{use-cc-license}
%==============================================================================


%==============================================================================
\RequirePackage{kantlipsum}  % 150 paragraphs of the Lorem Ipsum dummy text
\RequirePackage[base]{babel} % typographical rules for a wide range of languages
%==============================================================================


%==============================================================================
%-------------- PDF/A COMPLIANCE SECTION --------------------------------------
\directlua {   
  pdf.setmajorversion(1)   
  pdf.setminorversion(7) 
}
%----------- Two main packages ------------------------------------------------
\RequirePackage{hyperxmp}
\RequirePackage[pdfa]{hyperref}
%-------------- CC BY-NC-ND 4.0  ------ ---------------------------------------
\RequirePackage[type={CC},modifier={by-sa},version={4.0}]{doclicense}
%-------------- TIME MUST BE YYYY-MM-DD ---------------------------------------
\RequirePackage[style=iso]{datetime2}
%-------------- LINKS AND PDF METADATA ---------------------------------------
\newcommand{\makepdfa}{
\DTMsavenoparsedate{adopted}{\Year}{\Month}{\Day}{-1}
\def\Date{\DTMusedate{adopted}}
%----
\hypersetup{
   %------- Hyperlink appearance ----------------
  colorlinks         =True,
  allcolors          =BrickRed,
  %------- PDF/A metadata -----------------------
  pdftitle           ={\Title},
  pdfsubtitle        ={\Subtitle},
  pdfauthor          ={\Author},
  pdfdate            ={\today},
  pdflang            ={en},
  pdfsubject         ={\Subject},
  pdfkeywords        ={\Keywords},
  pdfpublisher       ={Brock University Department of Physics},
  pdfpubtype         ={report}
  pdfurl             ={\URL},
  pdfcontactaddress  ={1812 Sir Isaac Brock Way},
  pdfcontactcity     ={St. Catharines, Ontario},
  pdfcontactpostcode ={L2S 3A1},
  pdfcontactcountry  ={Canada},
  pdfcontactphone    ={+1.905.688.5550 x3412},
  pdfcontactemail    ={physics@brocku.ca},
  pdfcontacturl      ={https://www.physics.brocku.ca},
  % ------------------------------------------------
  pdfcopyright       ={\doclicenseText},
  %------- PDF/A compliance -----------------------
  pdfapart           ={3},
  pdfaconformance    ={U}
}}
%---- Save a color profile to PDF/A file (required) ----------------------------
\immediate\pdfobj stream attr{/N 3}  file{images/eciRGB_v2.icc}
\pdfcatalog{%
  /OutputIntents [ <<
    /Type /OutputIntent
    /S/GTS_PDFA1
    /DestOutputProfile \the\pdflastobj\space 0 R
    /OutputConditionIdentifier (eciRGB_v2)
    /Info(eciRGB_v2)
  >> ]
}
%==============================================================================


%==============================================================================
% TITLE PAGE
%==============================================================================
\renewcommand{\maketitle}{%
\begin{titlepage}
    \thispagestyle{empty}
    \begin{textblock}{100}(12,0)
    \includegraphics[scale=0.25]{images/BrockU_logo.pdf}
    \end{textblock}
    \vfill
\end{titlepage}
\restoregeometry % restores the geometry
\nopagecolor     % restore the color pages to white
% -----------------------------------------------------------------------------
\vspace*{20mm}
\noindent
\begin{center}
\textbf{\Large \Title}\\
\vspace{1em}
by\\
\vspace{1em}
{\Large \Author}\\
\vspace{2em}
A thesis submitted in partial fulfilment of\\
the requirements for the degree of\\
\vspace{1em}
{\Large Master of Science}\\
\vspace{1em}
in\\
\vspace{1em}
The Faculty of Mathematics and Science\\
\vspace{1em}
Department of Physics\\
Brock University
\end{center}
\vspace*{40mm}
\noindent
\begin{center}
\textcopyright\ \Author\\
\iftoggle{use-cc-license}{\doclicenseThis}{}
\end{center}
}
%==============================================================================


