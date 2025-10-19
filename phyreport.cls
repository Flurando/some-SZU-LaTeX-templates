\ProvidesClass{phyreport}[2024/03/22 v3]
\LoadClassWithOptions{ctexart}
% 基础宏包引用
\RequirePackage{amsmath}\RequirePackage{anyfontsize}
\RequirePackage{array}\RequirePackage{float}\RequirePackage{framed}\RequirePackage{xparse}
\RequirePackage{fancybox}\RequirePackage{fancyhdr}\RequirePackage[margin=1in]{geometry}
\RequirePackage{graphicx}\RequirePackage{tikz}\RequirePackage{pdfpages}
\RequirePackage{caption}\RequirePackage{booktabs}\RequirePackage{multirow}\RequirePackage{comment}
% section 的字体设置
\RequirePackage{titlesec}
\titleformat{\section}[block]{\normalfont\bfseries\large}{\thesection}{0em}{}
\titleformat{\subsection}[block]{\normalfont\bfseries\normalsize}{\thesubsection}{1ex}{}

%\setcounter{secnumdepth}{4} % 增加编号深度
\RequirePackage{zhnumber}
\renewcommand{\thesection}{\zhnum{section}、}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\hspace{2em}\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
%\renewcommand{\theparagraph}{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.\arabic{paragraph}}
% 版面设置
\pagestyle{fancy}
\lhead{}\chead{}\rhead{}\lfoot{}\cfoot{}
\rfoot{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\headwidth}{\textwidth}
\renewcommand{\footrulewidth}{0pt}
\newcolumntype{C}{>{\centering\arraybackslash}m{1.0cm}} % 表格列格式设置
\captionsetup{font={small}} % 图表标题字样小一号
% 实验报告信息设置
\newcommand{\expName}[1]{\def\phyExpName{#1}}
\newcommand{\expDate}[3]{
	\IfValueTF{#1}{\def\syear{#1}}{\def\syear{\2025}}
	\IfValueTF{#2}{\def\smonth{#2}}{\def\smonth{}}
	\IfValueTF{#3}{\def\sday{#3}}{\def\sday{}}
}
\newcommand{\subDate}[3]{
	\IfValueTF{#1}{\def\fyear{#1}}{\def\fyear{2024}}
	\IfValueTF{#2}{\def\fmonth{#2}}{\def\fmonth{}}
	\IfValueTF{#3}{\def\fday{#3}}{\def\fday{}}
}

\newcommand{\expType}[1]{\def\phyExpType{#1}} % 实验类型
\newcommand{\expTchr}[1]{\def\phyExpTchr{#1}} % 指导老师
\newcommand{\expAuthor}[1]{\def\phyAuthor{#1}} % 我的姓名
\newcommand{\expStuID}[1]{\def\phyStuID{#1}} % 我的学号
\newcommand{\expNum}[1]{\def\phyNum{#1}} % 我的组号
\newcommand{\expID}[1]{\def\phyID{#1}} % 课程编号
% 有其他需要每个报告修改请自行添加

% 绘制实验报告第一页封面
\NewDocumentCommand\phyExpCover{}{
	\newpage
	\thispagestyle{empty}

	\begin{tikzpicture}[remember picture, overlay, inner sep=0pt, every node/.style={font=\fontsize{14}{14}}]
		\node[above] at (8.5,-5.8)
		{\textbf{大学物理实验（二）}};
		\node[above] at (8.5,-7.9)
		{\textbf{\phyExpName}};
		\node[above] at (8.5,-10.0)
		{\textbf{你的学院}};
		\node[above] at (8.5,-12.1)
		{\textbf{\phyExpTchr}};
		\node[above] at (5.75,-14.2)
		{\textbf{\phyAuthor}};
		\node[above] at (11,-14.2)
		{\textbf{\phyNum}};
		\node[above] at (5.75,-16.3)
		{\textbf{\phyStuID}};
                \node[above] at (11,-16.3)
                {\textbf{致原楼}};

		\node[above, font=\fontsize{22}{18}\selectfont] at (7.13,-3.33)
		{\textbf{深　圳　大　学　实　验　报　告}};
		\node[right] at (1.8,-5.6)
		{\textbf{课程名称：}\rule[-5pt]{8.7cm}{1pt}};
		\node[right] at (1.8,-7.7)
		{\textbf{实验名称：}\rule[-5pt]{8.7cm}{1pt}};
		\node[right] at (1.8,-9.8)
		{\textbf{学　　院：}\rule[-5pt]{8.7cm}{1pt}};
		\node[right] at (1.8,-11.9)
		{\textbf{指导教师：}\rule[-5pt]{8.7cm}{1pt}};
                \node[right] at (1.8,-14.0)
                {\textbf{报告人：}\rule[-5pt]{4cm}{1pt}\textbf{组号：}\rule[-5pt]{3.72cm}{1pt}};
		\node[right] at (1.8,-16.1)
		{\textbf{学号：}\rule[-5pt]{4.4cm}{1pt}\textbf{实验地点：}\rule[-5pt]{3.7cm}{1pt}};
		\node[right] at (1.8,-18.2)
		{\textbf{实验时间：\rule[-5pt]{1.8cm}{1pt}年\rule[-5pt]{0.9cm}{1pt}月\rule[-5pt]{0.9cm}{1pt}日}};
		\node[right] at (1.8,-20.3)
		{\textbf{提交时间：\rule[-5pt]{1.8cm}{1pt}年\rule[-5pt]{0.9cm}{1pt}月\rule[-5pt]{0.9cm}{1pt}日}};

		\node[right, font=\fontsize{10.95}{10.95}\selectfont] at (0.48,0.5)
		{课程编号\underline{　　\phyID　　}};
		\node[right, font=\fontsize{10.95}{10.95}\selectfont] at (0.48,-0.1)
		{实验类型\underline{　　\phyExpType　　}};

		\draw (8.45,1.2) rectangle (14.75,-0.8);
		\draw (8.45,0.6) -- (14.75,0.6);
		\draw (9.9,1.2) rectangle (9.9,-0.8);
		\draw (12.5,1.2) rectangle (12.5,-0.8);
		\node[above, font=\fontsize{10.95}{10.95}\selectfont] at (9.175,0.7)
		{\textbf{得分}};
		\node[above, font=\fontsize{10.95}{10.95}\selectfont] at (11.175,0.7)
		{\textbf{教师签名}};
		\node[above, font=\fontsize{10.95}{10.95}\selectfont] at (13.625,0.7)
		{\textbf{批改日期}};

		\filldraw[white] (12.9, -4) rectangle  (21, -30);
	\end{tikzpicture}
	\newpage
}
% 插入一张图片
\newcommand\includePDFFirstPage[1]{
	\newpage
	\thispagestyle{empty}
	\includepdf[pages=1, fitpaper=true]{#1}
	\newpage
}
% 分割节 section
\NewDocumentCommand\longLine{}{
	\par
	\begin{tikzpicture}[overlay]
		\draw (-0.85, -0.65) -- (15.29, -0.65);
	\end{tikzpicture}
}

\NewDocumentCommand\smartLongLine{}{
	\ifdim\pagetotal>\dimexpr\textheight-8\baselineskip

		\clearpage

	\else
		\longLine
	\fi
}

% 绘制实验报告结束部分教师评价和打分表
\NewDocumentCommand\endBox{}{
	\longLine
	\section*{指导教师批阅意见}
	\quad\\[2cm]
	\longLine
	\section*{成绩评定}
	\begin{table}[H]
          \begin{tabular}{|l|l|l|l|l|l|}
            \hline
            % line 1
            \begin{tabular}[c]{@{}l@{}} 预习\\ （20分）\end{tabular}
            & \begin{tabular}[c]{@{}l@{}}操作及记录\\ （40分）\end{tabular}
            & \begin{tabular}[c]{@{}l@{}}数据处理与结果陈述\\ （30分）\end{tabular}
            & \begin{tabular}[c]{@{}l@{}}思考题\\ （10分）\end{tabular}
            & 报告整体印象
            & 总分
            % seperator
            \\ \hline
            % line 2
            \begin{tabular}[c]{@{}l@{}}　\\　\end{tabular} & & & & &
            \\ \hline
          \end{tabular}
	\end{table}
}
