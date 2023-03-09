%% --------------- BEGIN OF INFORMATION -------------- %%

% zhcven.cls:
% An English CV template by Xin Wang(learn from chi_cv_template and zys)
% Author: Xin Wang
% Version: 2023/03/09
% GitHub: https://github.com/WxxW2002/CV

%% ----------------- END OF INFORMATION -------------- %%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cv_en}[2023/01/13 An English CV template by Xin Wang]
% \LoadClass[11pt]{ctexart} % based on ctex class
\LoadClass[11pt]{article} % based on article class

%% ---------------- BEGIN OF PACKAGES ---------------- %%

% FONT
\RequirePackage[T1]{fontenc}
\RequirePackage{fontspec}
\RequirePackage{unicode-math}

% ICON
\RequirePackage{fontawesome5}

% SECTION FORMATTING
\RequirePackage[nostruts]{titlesec}

% COLOR
\RequirePackage{xcolor}

% HYPERLINK
\RequirePackage[hidelinks]{hyperref}

% HEADER AND FOOTER
\RequirePackage{fancyhdr}

% MARGINS AND SPACING
\RequirePackage[
    a4paper,
    margin=.7in,
    top=.5in,
    bottom=.5in,
]{geometry}
\RequirePackage{setspace}

% ITEMIZE
\RequirePackage{enumitem}

% PAGE NUMBER
\RequirePackage{lastpage}
\RequirePackage{zref-totpages}

%% ----------------- END OF PACKAGES ----------------- %%

%% ---------------- BEGIN OF DEFINITION -------------- %%

% HIGHTLIGHT COLOR
\definecolor{zcolor}{cmyk}{.2, 1, 1, 0} % SJTU STANDARD COLOR (C20 M100 Y100 K0)
%% other choices
% \definecolor{zcolor}{RGB}{0, 0, 0} % black (no highlight)
% \definecolor{zcolor}{RGB}{0, 64, 152} % SJTU SEIEE BLUE

%% ----------------- END OF DEFINITION --------------- %%

%% ---------------- BEGIN OF FORMATTING -------------- %%

% FONT
\setmainfont{XCharter}
%% other choices
% \setmainfont{Times New Roman}
% \setmainfont{Cambria Math}
% \setmainfont{Georgia}

% INDENT
\raggedleft % left align no indent
\raggedright % right align no indent

% HEADER AND FOOTER
\pagestyle{fancy}
\fancypagestyle{default}{
  \fancyhf{}
  \RenewDocumentCommand{\headrulewidth}{}{0pt}
  \rfoot{\textit{\thepage/\pageref{LastPage}}}
}
\fancypagestyle{lastpage}{
  \fancyhf{}
  \RenewDocumentCommand{\headrulewidth}{}{0pt}
  \rfoot{\color{gray}\small Updated on \today}
}

% PAGESTYLE
\pagestyle{default}
% \pagenumbering{gobble} % no page number
\AtBeginDocument{
  \setlength{\baselineskip}{16pt} % line space
  % PERSONAL INFORMATION
  {{\Huge\textcolor{zcolor}{\sffamily\MakeUppercase\name}} \\
  \vspace{2mm}
  \faPhone \hspace{0.2mm} \phone
  \hspace{1mm}
  \faEnvelope \underline{\href{mailto:\email}{\hspace{0.2mm} \email}}
  \hspace{1mm}
  \faGithub \underline{\href{https://github.com/\github}{\hspace{0.2mm} \github}}
  % \hspace{1mm}
  % \faLinkedinSquare \underline{\href{https://www.linkedin.com/in/\LinkedIn}{\hspace{0.2mm} \LinkedIn}}
  \hspace{1mm}
  \faGlobe \underline{\href{https://\site}{\hspace{0.2mm} \site}}}
}
% \AtEndDocument{\thispagestyle{lastpage}}

% SECTION FORMATTING
\titleformat{\section}
  {\raggedright\normalfont\color{zcolor}\large\sffamily\MakeUppercase} % shape
  {} % format
  {0em} % label
  {} % before-code
  [\vspace{-0.75em}\hrulefill] % after-code
\titlespacing*{\section}
  {0em} % left spacing
  {1.2em} % before spacing
  {0em} % after spacing
\titleformat{\subsection}
  {\bfseries}
  {}
  {0em}
  {}
  []
\titlespacing*{\subsection}
  {0em}
  {0em}
  {0em}

% HYPERLINK FORMATTING
\hypersetup{
  hidelinks,
  colorlinks=false,
  allbordercolors={0 0 0}
  % pdfborderstyle={/S/U/W 1},
}

%% ----------------- END OF FORMATTING --------------- %%

%% ---------------- BEGIN OF COMMANDS ---------------- %%

\NewDocumentCommand{\institution}{m}{\textbf{#1}}

\NewDocumentCommand{\ztime}{m}{\hfill \textit{#1}}

\NewDocumentCommand{\location}{m}{\hfill #1}

\NewDocumentCommand{\highlight}{m}{\textcolor{zcolor}{#1}}

%% ----------------- END OF COMMANDS ----------------- %%

%% --------------- BEGIN OF ENVIRONMENTS ------------- %%

\NewDocumentEnvironment{zitemize}{}{%
  \begin{itemize}[
    topsep=0pt,
    leftmargin=.5cm,
    label=\raisebox{0.3ex}{\tiny$\bullet$},
    leftmargin=.3in
  ] \itemsep 0pt \parskip 0pt \parsep 0pt
}{%
  \end{itemize}
}

%% ----------------- END OF ENVIRONMENTS ------------- %%
