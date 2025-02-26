# Digital Research Toolkit for Linguists

Author: `anna.pryslopska[ AT ]ling.uni-stuttgart.de`

These are the original materials from the course "Digital Research Toolkit for Linguists taught by me in the Summer Semester 2024 at the University of Stuttgart.

If you want to replicate this course, you can do so with proper attribution. To replicate the data, follow these links for [Experiment 1](https://farm.pcibex.net/r/CuZHnp/) (full Moses illusion experiment) and [Experiment 2](https://farm.pcibex.net/r/zAxKiw/) (demo of self-paced reading with acceptability judgment).

## Schedule and syllabus

This is a rough overview of the topics discussed every week. These are subject to change, depending on how the class goes.

| Week | Topic | Description | Assignments | Materials |
| ---- | ----- | ----------- | ----------- | --------- |
| 1    | Introduction & overview | Course overview and expectations, classroom management and assignments/grading etc. Data collection. | Complete [Experiment 1](https://farm.pcibex.net/p/glQRwV/) and [Experiment 2](https://farm.pcibex.net/p/ceZUkj/) and recruit one more person. [Install R](https://www.r-project.org/) and [RStudio](https://posit.co/download/rstudio-desktop/), install [Texmaker](https://www.xm1math.net/texmaker/) or make an [Overleaf](https://www.overleaf.com/) account. | [Slides](https://github.com/a-nap/DRTfL2024/blob/1e3ac235f6957eaaebf8a19f1889d0b6a6f79fb7/Week%201/week1handout.pdf) |
| 2    | Data, R and RStudio | Intro recap, directories, R and RStudio, installing and loading packages, working with scripts | Read chapters 2, 6 and 7 of [R for Data Science](https://r4ds.hadley.nz/), complete [assignment 1](https://github.com/a-nap/DRTfL2024/blob/main/Week%202/week2assignment.md) | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%202/week2handout.pdf), [code](https://github.com/a-nap/DRTfL2024/blob/main/Week%202/code_APR15.r) |
| 3    | Reading data, data inspection and manipulation | Looking at your data, data types, importing, making sense of the data, intro to sorting, filtering, subsetting, removing missing data, data manipulation | Read chapters 3, 4 and 5 of [R for Data Science](https://r4ds.hadley.nz/), complete [assignment 2](https://github.com/a-nap/DRTfL2024/blob/main/Week%203/week3assignment.md). | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%203/week3handout.pdf), [code](https://github.com/a-nap/DRTfL2024/blob/main/Week%203/code_APR22.r), data |
| 4    | Data manipulation | Basic operators, data manipulation (filtering, sorting, subsetting, arranging), pipelines, tidy code, practice. | Compete [assignment 3](https://github.com/a-nap/DRTfL2024/blob/main/Week%204/week4assignment.md) | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%204/week4handout.pdf), [code](https://github.com/a-nap/DRTfL2024/blob/main/Week%204/code_APR29.r), data |
| 5    | Data manipulation and error handling | Summary statistics, grouping, merging, if ... else, naming variables, tidy code, error handling and getting help. | [Assignment 4](https://github.com/a-nap/DRTfL2024/blob/main/Week%205/week5assignment.md), read the slides from the QCBS R Workshop Series [*Workshop 3: Introduction to data visualisation with `ggplot2`*](https://r.qcbs.ca/workshop03/pres-en/workshop03-pres-en.html) | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%205/week5handout.pdf), [code](https://github.com/a-nap/DRTfL2024/blob/main/Week%205/code_MAY06.r) |
| 6    | Data visualization | Communicating with graphics, choice of visualization, plot types, best practices, visualizing in R (`ggplot2`, `esquisse`), exporting plots and data | Complete [assignment 5](https://github.com/a-nap/DRTfL2024/blob/main/Week%206/week6assignment.md). If you haven't yet, install the package `esquisse` | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%206/week6handout.pdf), [code](https://github.com/a-nap/DRTfL2024/blob/main/Week%206/code_MAY13.r) |
| 7    | No class | Holiday | | |
| 8    | Data visualization | Data visualization recap, best practices, lying with plots, practical exercises, exporting/saving plots and data. | Complete [assignment 6](https://github.com/a-nap/DRTfL2024/blob/main/Week%208/week8assignment.md). Install [Quarto](https://quarto.org/docs/get-started/). Watch [the introductory video](https://www.youtube.com/watch?v=_f3latmOhew) | Slides [large](https://github.com/a-nap/DRTfL2024/blob/main/Week%208/week8.pdf) and [compressed](https://github.com/a-nap/DRTfL2024/blob/main/Week%208/week8handout.pdf), [code](https://github.com/a-nap/DRTfL2024/blob/main/Week%208/code_MAY27.r) |
| 9    | Creating reports with Quarto and knitr | Pandoc, markdown, Quarto, basic syntax and elements, export, document, and chunk options, documentation | Complete [assignment 7](https://github.com/a-nap/DRTfL2024/blob/main/Week%209/week9assignment.md). | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%209/week9handout.pdf), [compressed Quarto files](https://github.com/a-nap/DRTfL2024/blob/main/Week%209/quarto-demo.zip) |
| 10    | Typesetting documents with LaTeX | What is LaTeX, basic document and file structure, advantages and disadvantages, from R to LaTeX | Complete [assignment 8](https://github.com/a-nap/DRTfL2024/blob/main/Week%2010/week10assignment.md), read chapter 2 of [*The Not So Short Introduction to LaTeX*](https://tobi.oetiker.ch/lshort/lshort.pdf). | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%2010/week10handout.pdf), [basic LaTeX file (zip)](https://github.com/a-nap/DRTfL2024/blob/main/Week%2010/basic%20LaTeX%20document.zip) |
| 11    | Typesetting documents with LaTeX | Editing text (commands, whitespace, environments, font properties, figures, and tables), glosses, IPA symbols, semantic formulae, syntactic trees | Complete [assignment 9](https://github.com/a-nap/DRTfL2024/blob/main/Week%2011/week11assignment.md), read [*Bibliography management with biblatex*](https://www.overleaf.com/learn/latex/Bibliography_management_with_biblatex) | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%2011/week11handout.pdf) |
| 12   | Typesetting documents with LaTeX and bibliography management | Large projects, citations, references, bibliography styles, bib file structure | Complete [assignment  10](https://github.com/a-nap/DRTfL2024/blob/main/Week%2012/week12assignment.md) | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%2012/week12handout.pdf), [big project files](https://github.com/a-nap/DRTfL2024/blob/main/Week%2012/big_project.zip) |
| 13   | Literature and reference management, common command line commands | Reference managers, looking up literature, command line commands (grep, diff, ping, cd, etc.) | Complete [assignment 11](https://github.com/a-nap/DRTfL2024/blob/main/Week%2013/week13assignment.md) | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%2013/week13upload.pdf), [corpus1.txt](https://github.com/a-nap/DRTfL2024/blob/main/Week%2013/corpus1.TXT), [corpus2.txt](https://github.com/a-nap/DRTfL2024/blob/main/Week%2013/corpus2.TXT), [corpus3.txt](https://github.com/a-nap/DRTfL2024/blob/main/Week%2013/corpus3.TXT), [big project 1](https://github.com/a-nap/DRTfL2024/blob/main/Week%2013/big_project_1.zip), [big project 2](https://github.com/a-nap/DRTfL2024/blob/main/Week%2013/big_project_2.zip) |
| 14   | Text editors, version control and Git | Text editors, Git, GitHub, version control | Complete [assignment 12](https://github.com/a-nap/DRTfL2024/blob/main/Week%2014/week14assignment.md) | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%2014/week14handout.pdf), [example readme file](https://github.com/a-nap/DRTfL2024/blob/main/Week%2014/readme-example.md) |
| 15   | Version control and Git | Git, GitHub, SSH, reverting to older versions | In class assignment | [Slides](https://github.com/a-nap/DRTfL2024/blob/main/Week%2015/week15handout.pdf), [SSH for GitHub video](https://vimeo.com/989393245) |

## Recommended reading

### Git

- GitHub Git guide: [`https://github.com/git-guides/`](https://github.com/git-guides/)
- Another git guide: [`http://rogerdudler.github.io/git-guide/`](http://rogerdudler.github.io/git-guide/)
- Git tutorial: [`http://git-scm.com/docs/gittutorial`](http://git-scm.com/docs/gittutorial)
- Another git tutorial: [`https://www.w3schools.com/git/`](https://www.w3schools.com/git/)
- Git cheat sheets: [`https://training.github.com/`](https://training.github.com/)
- Where to ask questions: [Stackoverflow](https://stackoverflow.com)

### LaTeX

- Overleaf (n.d.) *Bibliography management with biblatex*. Accessed: 2024-06-24. URL: [`https://www.overleaf.com/learn/latex/Bibliography_management_with_biblatex`](https://www.overleaf.com/learn/latex/Bibliography_management_with_biblatex)
- Dickinson, Markus and Josh Herring (2008). *LaTeX for Linguists*. Accessed: 2024-06-07. URL:
[`https://cl.indiana.edu/~md7/08/latex/slides.pdf`](https://cl.indiana.edu/~md7/08/latex/slides.pdf).
- LaTeX/Linguistics - Wikibooks (2024). Accessed: 2024-06-07. URL: [`https://en.wikibooks.org/wiki/LaTeX/Linguistics`](https://en.wikibooks.org/wiki/LaTeX/Linguistics).
- Oetiker, Tobias et al. (2023). *The Not So Short Introduction to LATEX*. Accessed: 2024-06-07. URL:
[`https://tobi.oetiker.ch/lshort/lshort.pdf`](https://tobi.oetiker.ch/lshort/lshort.pdf).

### Quarto

- Introductory video: [`https://www.youtube.com/watch?v=_f3latmOhew`](https://www.youtube.com/watch?v=_f3latmOhew)
- Documentation: [`https://quarto.org/docs/get-started/`](https://quarto.org/docs/get-started/)

### R

- QCBS R Workshop Series [`https://r.qcbs.ca/`](https://r.qcbs.ca/)
- Wickham, Hadley, Mine Çetinkaya-Rundel, and Garrett Grolemund (2023). *R for data science: import, tidy, transform, visualize, and model data*. 2nd ed. O’Reilly Media, Inc. URL: [`https://r4ds.hadley.nz/`](https://r4ds.hadley.nz/).

### Experiments

- Free-response: Erickson, Thomas D and Mark E Mattson (1981). “From words to meaning: A semantic illusion”. In: *Journal of Verbal Learning and Verbal Behavior* 20.5, pp. 540–551. DOI: [`10.1016/s0022-5371(81)90165-1`](https://www.sciencedirect.com/science/article/abs/pii/S0022537181901651).
- Self-paced reading with acceptability judgments: Gibson, Edward, Leon Bergen, and Steven T Piantadosi (2013). “Rational integration of noisy evidence and prior semantic expectations in sentence interpretation”. In: *Proceedings of the National Academy of Sciences* 110.20, pp. 8051–8056. DOI: [`10.1073/pnas.1216438110`](https://www.pnas.org/doi/full/10.1073/pnas.1216438110).
