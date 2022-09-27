% Kevin Stephen 的私人模板
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{kspaper}
 [2022/08/13 v0.0.1 Kevin Stephen's LaTeX Template]

% 文档定义 article
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\PassOptionsToPackage{quiet}{fontspec}
\ProcessOptions{\relax}
%% 加载文档类型 a4纸 小四(12pt)字号
\LoadClass[12pt,a4paper]{article}
\RequirePackage{ifxetex}
\RequireXeTeX

% 加载一些宏包
\RequirePackage{ctex}
% \RequirePackage[perpage,symbol*]{footmisc}
%% 页面布局
\RequirePackage{geometry}
\geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
%%% 1.5倍行间距
\renewcommand*{\baselinestretch}{1.38}
%% 数学宏包
\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amsfonts}
\RequirePackage{amssymb}
\RequirePackage{unicode-math}
\RequirePackage{titletoc}
%% graphicx
\RequirePackage{graphicx}
%%% 图片后缀
\DeclareGraphicsExtensions{.pdf,.eps,.jpg,.png}
%%% 存放图片目录
\graphicspath{
    {figures/}
    {figure/}
    {pictures/}
    {picture/}
    {pic/}
    {pics/}
    {image/}
    {images/}
}
%% 表格
\RequirePackage{array}
\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{multirow}
\RequirePackage{bigstrut}
\RequirePackage{bigdelim}
\RequirePackage{cprotect}
\RequirePackage{enumitem}
%% listings
\RequirePackage[dvipsnames]{xcolor}
\RequirePackage{textcomp}
\RequirePackage{listings}
\lstset{
    % 基本设置 小字体 等宽(teletype)
    basicstyle={\small\ttfamily},
    % 关键字 粗体 NavyBlue
    keywordstyle={\color{NavyBlue}\bfseries},
    % 标识符 混合色 `Black' + `VioletRed'
    identifierstyle={\color{Black!80!VioletRed}},
    % 注释 混合色 `CadetBlue' + `Black'
    commentstyle={\color{CadetBlue!90!Black}},
    % 字符串
    stringstyle={\color{WildStrawberry}},
    % 字符显示
    extendedchars=true,
    inputencoding=utf8x,
    upquote=true,
    tabsize=2,
    showstringspaces=false,
    % escapeinside={(*@}{@*)},
    % 行号
    %% 是否启用行号 (left|right|none)
    numbers=left,
    %% 行号样式
    numberstyle={\small\color{Gray!70!Red}},
    %% 行号与代码间隔
    numbersep=5pt,
    % 是否自动断行
    breaklines=true,
    % 是否只在空白字符断行
    breakatwhitespace=true,
    % 边框 顶部和左边单线 右边和下面双线
    % frame=shadowbox,
    frame=tb,
    aboveskip=3mm,
    belowskip=3mm,
    %% 是否圆角
    % frameround=tftt,
    %% 边框线宽
    framerule=1pt,
    %% 背景颜色
    backgroundcolor={\color{Gray!5!White}},
    %% 边框颜色
    rulecolor={\color{MidnightBlue}},
    % rulesepcolor={\color{MidnightBlue}},
    % 列对齐
    columns=flexible,
}
%% 首行缩进
\RequirePackage{indentfirst}
\setlength\parindent{2em}
%% 设置标题
\RequirePackage{caption}
%% 下划线
\RequirePackage{ulem}
\RequirePackage{calc}
%% hyper
\RequirePackage[hyphens]{url}
\RequirePackage[urlcolor=blue]{hyperref}
\AtBeginDocument{
    \hypersetup{
        pageanchor=true,
        CJKbookmarks=true,
        bookmarksnumbered=true,
        bookmarksopen=true,
        bookmarksopenlevel=0,
        breaklinks=true,
        plainpages=false,
        pdfborder=0 0 0,
    }
}
\urlstyle{same}
\PassOptionsToPackage{unicode}{hyperref}
\PassOptionsToPackage{naturalnames}{hyperref}
%% fancyhdr
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\setlength{\headheight}{13pt}
\addtolength{\topmargin}{-1pt}

% 中文设置
\newcommand*{\kstex@cap@abstractname}{摘\hspace{2em}要}
\newcommand*{\kstex@cap@contentsname}{目\hspace{2em}录}
\newcommand*{\kstex@cap@revisionhistory}{修订历史}
\newcommand*{\kstex@cap@listfigurename}{插图清单}
\newcommand*{\kstex@cap@listtablename}{附表清单}
\newcommand*{\kstex@cap@listsymbolname}{符号清单}
\newcommand*{\kstex@cap@listequationname}{公式清单}
\newcommand*{\kstex@cap@equationname}{公式}
\newcommand*{\kstex@cap@indexname}{索\hspace{2em}引}
\newcommand*{\kstex@cap@figurename}{图}
\newcommand*{\kstex@cap@tablename}{表}
\newcommand*{\kstex@cap@preface}{前\hspace{2em}言}
\newcommand*{\kstex@cap@acknowledgementname}{致\hspace{2em}谢}
\newcommand*{\kstex@cap@appendixname}{附录\hspace{0.5em}\chinese{\arabic{section}}}
\newcommand*{\kstex@cap@definition}{定义}
\newcommand*{\kstex@cap@notation}{记号}
\newcommand*{\kstex@cap@theorem}{定理}
\newcommand*{\kstex@cap@lemma}{引理}
\newcommand*{\kstex@cap@corollary}{推论}
\newcommand*{\kstex@cap@proposition}{命题}
\newcommand*{\kstex@cap@fact}{事实}
\newcommand*{\kstex@cap@assumption}{假设}
\newcommand*{\kstex@cap@conjecture}{猜想}
\newcommand*{\kstex@cap@hypothesis}{假说}
\newcommand*{\kstex@cap@axiom}{公理}
\newcommand*{\kstex@cap@postulate}{公设}
\newcommand*{\kstex@cap@principle}{定律}
\newcommand*{\kstex@cap@problem}{问题}
\newcommand*{\kstex@cap@exercise}{练习}
\newcommand*{\kstex@cap@example}{例}
\newcommand*{\kstex@cap@remark}{评注}
\newcommand*{\kstex@cap@proof}{证明}
\newcommand*{\kstex@cap@solution}{解}
\newcommand*{\kstex@cap@algorithm}{算法}
\newcommand*{\kstex@cap@case}{情况}
\newcommand*{\kstex@cap@subcase}{子情况}
\newcommand*{\kstex@cap@step}{步骤}
\newcommand*{\kstex@cap@substep}{子步骤}
\newcommand*{\kstex@cap@year}{年}
\newcommand*{\kstex@cap@month}{月}
\newcommand*{\kstex@cap@day}{日}
\newcommand*{\kstex@cap@to}{至}

% 设置字体
\newcommand*{\kstex@zhft@songti}{SimSun}
\newcommand*{\kstex@zhft@heiti}{Sarasa Gothic SC}
\newcommand*{\kstex@zhft@kaishu}{KaiTi}
\newcommand*{\kstex@zhft@fangsong}{FangSong}
\newcommand*{\kstex@enft@main}{Times New Roman}
\newcommand*{\kstex@enft@sans}{Sarasa Gothic SC}
\newcommand*{\kstex@enft@mono}{Sarasa Mono Slab SC}
%% 设置 CJK
% \setCJKfamilyfont{song}{\kstex@zhft@songti}
\setCJKfamilyfont{hei}[AutoFakeBold]{SimHei}
% \setCJKfamilyfont{kai}{\kstex@zhft@kaishu}
% \setCJKfamilyfont{fangsong}{\kstex@zhft@fangsong}
% \setCJKmainfont[BoldFont={\kstex@zhft@heiti},
%     ItalicFont={\kstex@zhft@kaishu}]{\kstex@zhft@songti}
% \setCJKsansfont{\kstex@zhft@heiti}
% \setCJKmonofont{\kstex@zhft@fangsong}
\setmainfont{\kstex@enft@main}
\setsansfont{\kstex@enft@sans}
\setmonofont{\kstex@enft@mono}
% \renewcommand*{\songti}{\CJKfamily{song}}
\newcommand*{\hei}{\CJKfamily{hei}}
% \renewcommand*{\kaishu}{\CJKfamily{kai}}
% \renewcommand*{\fangsong}{\CJKfamily{fangsong}}
\renewcommand{\textsc}[1]{{\usefont{OT1}{cmr}{m}{sc}{#1}}}
\newcommand{\dashnumber}[2]{{#1}\kern.07em\rule[.5ex]{.4em}{.15ex}\kern.07em{#2}}
\renewcommand*{\thefigure}{\dashnumber{\arabic{section}}{\arabic{figure}}}
\renewcommand*{\thetable}{\dashnumber{\arabic{section}}{\arabic{table}}}
\renewcommand*{\theequation}{\dashnumber{\arabic{section}}{\arabic{equation}}}

% 数学环境
\newtheorem{definition}{\kstex@cap@definition}[section]
\newtheorem{notation}[definition]{\kstex@cap@notation}
\newtheorem{theorem}{\kstex@cap@theorem}[section]
\newtheorem{lemma}[theorem]{\kstex@cap@lemma}
\newtheorem{corollary}[theorem]{\kstex@cap@corollary}
\newtheorem{proposition}[theorem]{\kstex@cap@proposition}
\newtheorem{fact}[theorem]{\kstex@cap@fact}
\newtheorem{assumption}[theorem]{\kstex@cap@assumption}
\newtheorem{conjecture}[theorem]{\kstex@cap@conjecture}
\newtheorem{hypothesis}{\kstex@cap@hypothesis}[section]
\newtheorem{axiom}{\kstex@cap@axiom}[section]
\newtheorem{postulate}{\kstex@cap@postulate}[section]
\newtheorem{principle}{\kstex@cap@principle}[section]
\newtheorem{problem}{\kstex@cap@problem}[section]
\newtheorem{exercise}{\kstex@cap@exercise}[section]
\newtheorem{example}{\kstex@cap@example}[section]
\newtheorem{remark}{\kstex@cap@remark}[section]
\newenvironment{solution}[1][\kstex@cap@solution]{
    \par
    \normalfont
    \topsep6\p@\@plus6\p@\relax
    \trivlist
    \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\endtrivlist\@endpefalse}
\renewenvironment{proof}[1][\kstex@cap@proof]{
    \par
    \pushQED{\qed}
    \normalfont
    \topsep6\p@\@plus6\p@\relax
    \trivlist
    \item[\hskip\labelsep\textbf{#1}\@addpunct{:}]\ignorespaces
}{\popQED\endtrivlist\@endpefalse}
%% algorithm seudocode
\newtheorem{algorithm}{\kstex@cap@algorithm}[section]
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
\renewcommand{\algorithmicrequire}{ \textbf{输入:}}
\renewcommand{\algorithmicensure}{ \textbf{输出:}}
\floatname{algorithm}{算法}
%% 名称标号
\renewcommand*{\thedefinition}{\dashnumber{\arabic{section}}{\arabic{definition}}}
\renewcommand*{\thetheorem}{\dashnumber{\arabic{section}}{\arabic{theorem}}}
\renewcommand*{\theaxiom}{\dashnumber{\arabic{section}}{\arabic{axiom}}}
\renewcommand*{\theproblem}{\dashnumber{\arabic{section}}{\arabic{problem}}}
\renewcommand*{\theexercise}{\dashnumber{\arabic{section}}{\arabic{exercise}}}
\renewcommand*{\theexample}{\dashnumber{\arabic{section}}{\arabic{example}}}
\renewcommand*{\theremark}{\dashnumber{\arabic{section}}{\arabic{remark}}}

% 浮动环境定义
\renewcommand*{\textfraction}{0.05}
\renewcommand*{\topfraction}{0.9}
\renewcommand*{\bottomfraction}{0.8}
\renewcommand*{\floatpagefraction}{0.85}

% 使用中文名称
\renewcommand*{\abstractname}{\kstex@cap@abstractname}
\renewcommand*{\contentsname}{\kstex@cap@contentsname}
\renewcommand*{\listfigurename}{\kstex@cap@listfigurename}
\renewcommand*{\listtablename}{\kstex@cap@listtablename}
\newcommand*{\listsymbolname}{\kstex@cap@listsymbolname}
\newcommand*{\listequationname}{\kstex@cap@listequationname}
\renewcommand*{\indexname}{\kstex@cap@indexname}
\newcommand*{\equationname}{\kstex@cap@equationname}
\renewcommand*{\figurename}{\kstex@cap@figurename}
\renewcommand*{\tablename}{\kstex@cap@tablename}
\renewcommand*{\appendixname}{\kstex@cap@appendixname}

% 标题格式
\setcounter{secnumdepth}{3}
%% 节标题格式 居中
\def\@seccntformat#1{\csname the#1\endcsname\ }
\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{\arabic{section}.\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection.\arabic{subsubsection}}
\renewcommand\section{\@startsection{section}{1}{\z@}
 	{-3.5ex \@plus -1ex \@minus -.2ex}
	{2.3ex \@plus.2ex}
	{\centering\normalfont\Large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}
	{-3.25ex\@plus -1ex \@minus -.2ex}
	{1.5ex \@plus .2ex}
	{\normalfont\large\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}
	{-3.25ex\@plus -1ex \@minus -.2ex}
	{1.5ex \@plus .2ex}
	{\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}
	{3.25ex \@plus1ex \@minus.2ex}
	{-1em}
	{\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}
	 {3.25ex \@plus1ex \@minus .2ex}
	 {-1em}
	 {\normalfont\normalsize\bfseries}}
\titlecontents{section}[0pt]{\vspace{2mm}\bfseries}
    {\thecontentslabel\hskip.5em}
    {}
    {\titlerule*[0.5pc]{.}\contentspage}
\titlecontents{subsection}[30pt]{\songti}
    {\thecontentslabel\hskip.5em}
    {}
    {\titlerule*[0.5pc]{.}\contentspage}
\titlecontents{subsubsection}[55pt]{\songti}
    {\thecontentslabel\hskip.5em}
    {}
    {\titlerule*[0.5pc]{.}\contentspage}

% 图表设置
\DeclareCaptionFont{hei}{\hei}
\DeclareCaptionFont{wuhao}{\zihao{5}}
\captionsetup[figure]{
	format=hang,
	labelsep=quad,
	font={hei,wuhao,bf},
	position=bottom,
}
\captionsetup[table]{
	format=hang,
	labelsep=quad,
	font={hei,wuhao,bf},
	position=top,
}
\floatstyle{plaintop}
\restylefloat{table}
\let\convertergy@oldtabular\tabular
\let\convertergy@endoldtabular\endtabular
\renewenvironment{tabular}{
    \bgroup
    \renewcommand{\arraystretch}{1.38}
    \convertergy@oldtabular
}{
    \convertergy@endoldtabular
    \egroup
}
%% list
\setlist{
    % 列表顶端的垂直空白
	topsep=0.3em,
    % 列表环境前面紧接着一个空白行时其顶端的额外垂直空白
	partopsep=0pt,
    % 列表项之间的额外垂直空白
	itemsep=0ex plus 0.1ex,
    % 列表项内的段落之间的垂直空白
	parsep=0pt,
    % 环境的左边界和列表之间的水平距离
	leftmargin=1.5em,
    % 环境的右边界和列表之间的水平距离
	rightmargin=0em,
    % 包含标签的盒子与列表项的第一行文本之间的间隔
	labelsep=0.5em,
    % 包含标签的盒子的正常宽度 若实际宽度更宽 则使用实际宽度
	labelwidth=2em,
}
\setlist[itemize,1]{label=$\vcenter{\hbox{\large$\bullet$}}$} 
\setlist[itemize,2]{label=$\vcenter{\hbox{\small$\blacksquare$}}$} 
\setlist[itemize,3]{label=$\vcenter{\hbox{\small$\Diamondblack$}}$} 
\renewenvironment{quote}{
    \list{}{\leftmargin=4em\rightmargin=4em}\item[]
}{\endlist}
\renewenvironment{quotation}{
    \list{}{\leftmargin=4em\rightmargin=4em}\item[]
}{\endlist}

\endinput
