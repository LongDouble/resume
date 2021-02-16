%Copied from an article by James Allen, modified by Austin Goergen

\LoadClass{article}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[08/27/2020 My custom CV class]
\RequirePackage{titlesec}
\thispagestyle{empty}

\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=blue,
}

\titleformat{\section}         % Customise the \section command 
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading
  
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

\newcommand{\datedsection}[2]{%
  \section[#1]{#1 \hfill #2}%
}
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}

\newcommand{\workitems}[3]{%
    \vspace{-0.5em}
    \begin{itemize}
    \item[-] #1
    \vspace{-0.75em}
    \item[-] #2
    \vspace{-0.75em}
    \item[-] #3
    \end{itemize}%
}

\newcommand{\name}[1]{%
  \centerline{\Huge{#1}}
}

\newcommand\contact[3]{%
    \centerline{%
        \makebox[0pt][c]{%
            #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3%
        }%
    }%
}

