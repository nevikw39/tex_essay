\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{essay}[全國高級中等學校小論文寫作比賽的非官方 \LaTeX\ 模板類別]

\LoadClass[12pt, a4paper]{article}

\RequirePackage{xeCJK}

\def\category#1{\gdef\@category{#1}}
\def\teacher#1{\gdef\@teacher{#1}}

\renewcommand{\maketitle}{
	\begin{titlepage}
		\begin{center}
			投稿類別：\@category
			\vfill
			篇名：\\
			\@title
			\vfill
			作者：\\
			\@author
			\vfill
			指導老師：\\
			\@teacher
		\end{center}
	\end{titlepage}
}

\RequirePackage{changepage}
\newenvironment{tab}{\adjustwidth{2em}{0pt}}{\endadjustwidth}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\chead{\textsf{\footnotesize{\@title}}}
\cfoot{\textsf{p. \thepage}}

\RequirePackage{indentfirst}
\RequirePackage{xeCJKnum}

\renewcommand\section{\@startsection{section}{1}{0em}{0.5em}{0.5em}{}}
\renewcommand{\thesection}{\xeCJKcapnumber{\@arabic\c@section}、}
\renewcommand\subsection{\@startsection{subsection}{2}{2em}{0.5em}{0.5em}{}}
\renewcommand{\thesubsection}{\xeCJKnumber{\@arabic\c@subsection}、}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{4em}{0.5em}{0.5em}{}}
\renewcommand{\thesubsubsection}{（\xeCJKnumber{\@arabic\c@subsubsection}）}
