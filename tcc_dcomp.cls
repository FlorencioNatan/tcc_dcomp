%% tcc_dcomp.cls
%% Copyright 2015 Florêncio Natan dos Santos Gama
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is Florêncio Natan dos Santos Gama

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tcc_dcomp}
\LoadClass[a4paper,12pt,oneside]{book}

\RequirePackage[utf8]{inputenc}
\RequirePackage{float}
\RequirePackage{geometry}
 \geometry{
 a4paper,
 total={210mm,297mm},
 top=30mm,
 left=30mm,
 right=20mm,
 bottom=20mm,
 }
\usepackage{graphicx,url}
\usepackage{pgfplots}
\RequirePackage{titlesec}
\usepackage{setspace}
\setstretch{1.5}
\RequirePackage{hyperref}
\RequirePackage{listings}

\usepackage{float}

\renewcommand{\figurename}{Figura}

%Variáveis
\newcommand{\varcentro}{Centro do seu departamento}
\newcommand{\vardepartamento}{Seu Departamento}
\newcommand{\varautor}{Seu nome}
\newcommand{\varorientador}{Seu orientador}
\newcommand{\vartitulo}{Seu títutlo}
\newcommand{\varlocal}{Seu cidade}
\newcommand{\vardata}{data}
\newcommand{\varcurso}{Seu curso}
\newcommand{\varbancaum}{Integrante da Banca 1}
\newcommand{\varbancadois}{Integrante da Banca 2}
\newcommand{\varpalavraschave}{Palavras-chave}
\newcommand{\varkeywords}{Key word}
%Mudar valor das variáveis
\newcommand{\centro}[1]{
\renewcommand{\varcentro}{#1}
}
\newcommand{\departamento}[1]{
\renewcommand{\vardepartamento}{#1}
}
\newcommand{\autor}[1]{
\renewcommand{\varautor}{#1}
}
\newcommand{\orientador}[1]{
\renewcommand{\varorientador}{#1}
}
\newcommand{\titulo}[1]{
\renewcommand{\vartitulo}{#1}
}
\newcommand{\local}[1]{
\renewcommand{\varlocal}{#1}
}
\newcommand{\data}[1]{
\renewcommand{\vardata}{#1}
}
\newcommand{\curso}[1]{
\renewcommand{\varcurso}{#1}
}
\newcommand{\bancaum}[1]{
\renewcommand{\varbancaum}{#1}
}
\newcommand{\bancadois}[1]{
\renewcommand{\varbancadois}{#1}
}
\newcommand{\palavraschave}[1]{
\renewcommand{\varpalavraschave}{#1}
}
\newcommand{\keywords}[1]{
\renewcommand{\varkeywords}{#1}
}

%Comandos
\newcommand{\capa}{
\pagenumbering{gobble}
% Capa
  \begin{center}
{\LARGE \textbf{Universidade Federal de Sergipe}

\textbf{\varcentro}

\textbf{\vardepartamento}
\vfill
\textbf{\varautor}
\vfill
\textbf{\vartitulo}
\vfill \vfill
\textbf{\varlocal}

\textbf{\vardata}}
  \end{center}
\newpage
}

\newcommand{\contracapa}{
  \begin{center}
  {\LARGE \textbf{Universidade Federal de Sergipe}

  \textbf{\varcentro}

  \textbf{\vardepartamento}
  \vfill
  \textbf{\varautor}
  \vfill
  \textbf{\vartitulo}}
  \vfill
  \hfill
  \parbox{0.5\linewidth}{
  Trabalho de Conclusão de Curso submetido ao \vardepartamento da
  Universidade Federal de Sergipe como requisito parcial para a obtenção do título
   de Bacharel em \varcurso.
  }

  \hfill Orientador: \varorientador
  \vfill
  {\LARGE
  \textbf{\varlocal}

  \textbf{\vardata}}
  \end{center}
  \newpage
}

\newenvironment{banca}{
\begin{center}
{\Large \textbf{\varautor}
\vfill
\textbf{\vartitulo}

}
\end{center}
\bigskip
\bigskip}
{\bigskip

\varlocal, \vardata

\hfill \parbox{0.5\linewidth}{ \textbf{Banca Examinadora:}
  \begin{center}
 {\bigskip \bigskip \bigskip \bigskip \bigskip \bigskip

\makebox[80mm]{\hrulefill}

\textbf{\varorientador}

\bigskip \bigskip \bigskip \bigskip \bigskip \bigskip

\makebox[80mm]{\hrulefill}

\textbf{\varbancaum}

\bigskip \bigskip \bigskip \bigskip \bigskip \bigskip

\makebox[80mm]{\hrulefill}

\textbf{\varbancadois}

}
  \end{center}
}

\vfill
\vfill

\newpage
}

\newenvironment{agradecimentos}{\chapter*{\centering{Agradecimentos}}}{\newpage}

\newenvironment{resumo}{ \chapter*{\centering{Resumo}}}
{\bigskip \\ \textbf{Palavras-chave: }\varpalavraschave \newpage}

\newenvironment{abstract}{ \chapter*{\centering{Abstract}}}
{\bigskip \\ \textbf{Key words: }\varkeywords \newpage}

\newcommand{\listadefiguras}{
%\thispagestyle{empty}
\renewcommand{\listfigurename}{Lista de Figuras}
\listoffigures
\newpage
}

\newcommand{\listadetabelas}{
%\thispagestyle{empty}
\renewcommand{\listtablename}{Lista de Tabelas}
\listoftables
\newpage
}

\newenvironment{listadeabreviaturas}{ \chapter*{\centering{Lista de
abreviaturas e siglas}}}{ \newpage}
%\thispagestyle{empty}

\usepackage{tocloft}
\newcommand{\sumario}{
%\thispagestyle{empty}
\renewcommand*\contentsname{Sumário}
\renewcommand{\cftpartleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapleader}{\cftdotfill{\cftdotsep}}
\tableofcontents
}
\titleformat{\chapter}[hang]
{\normalfont\huge\bfseries}{\chaptertitlename\ \thechapter.}{0.3em}{}
\renewcommand{\chaptername}{}
\renewcommand\tablename{Tabela}