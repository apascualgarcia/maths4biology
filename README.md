MATHEMATICS BOOT CAMP: Introduction to Complex Systems Tools
=============================================================

## Synopsis

This repository contains didactic material used in an introductory course of mathematics at the Center for Complex Systems and Brain Sciences in Florida Atlantic University by [Viktor K. Jirsa](http://ins.univ-amu.fr/research-teams/team-member/v.jirsa/), please see licenses below.

This intensive course is to provide students with the prerequisites - some conceptual background and sufficient working knowledge of mathematics - necessary to master the mathematically based graduate courses at the Center for Complex Systems \& Brain Sciences. By no means it is intended to compete with the traditional introductory courses in mathematics taught at universities. Rather it should be viewed as a synopsis of the mathematical tools most probably encountered in scientific applications. The present script is meant to serve as a companion during the boot camp and as a quick reference and look-up source after the boot camp.

The project is compact while fairly complete, hence being ideal to include new topics or to expand those already discussed.

Original version: Boca Raton Florida, USA, August 2002.
Current version: Marseille, France, December 2018.

## Contents

The repository includes tex files with the contents of the course and a directory with Matlab scripts to generate the figures used in the tex document. The text is organized in different files labelled as `Final_day$number.tex`, where `$number` stands for the order of the chapter. These files can be then included as desired in a main file containing the headers of the document, called `Final.tex`. In addition, there are a number of tests called `Final_test$number.tex`, which should be compiled
individually.

### Downloading all the repository

The code is hosted in a public repository in [github.com](https://github.com/vjirsa/bootcamp). The simplest way to download the code is using `git`, which can be installed on Debian-based systems with

```bash
sudo apt-get install git
```

If `git` is already installed, change to a directory of your choice and clone the repository

```bash
git clone https://github.com/vjirsa/bootcamp.git
```

## Requirements and Installation

The programs and scripts included in this repository are not intended to be installed system-wide, but rather to be used as scripts, complementing the text of the document and allowing the reproduction of the figures as exercises.

The present version of the LaTeX files were compiled with `pdfTeX (TeX Live 2015/Debian)` and, beyond some standard LaTeX packages it may require the installation of the package [ulsy](https://www.ctan.org/pkg/ulsy) to enable some mathematical fonts.

To obtain the final document go to the directory where the repository was cloned and symply run:

```bash
latex Final.tex
latex Final.tex
dvipdf Final.dvi
```

## Contributors

The Mathematics Boot Camp would not have been possible without the help of my students, both running the boot camp, as well as writing this code. Here I wish to thank in particular Felix Almonte, Collins Assisi, Frederick Carver and Gautam Vallabha who tutored several afternoon sessions over the years and developed the exercises. Their contribution cannot be overstated. Jaime Morris helped in the typing and formatting of the code and Ajay Pillai did the lion's share in generating the figures and
formatting the code. Without these two, the script would have never evolved beyond a few hand-scribbled notes. Armin Fuchs spent considerable time on debugging the manuscript and took over my class towards the end of my tenure at FAU. This repository was created by [Alberto Pascual-García](https://apascualgarcia.github.io/).

Thank you so much!

Viktor K. Jirsa

## License

Two different licenses are granted in this repository, one for the code and another one for the didactic contents.

This code is licensed by a MIT License (Copyright (c) 2018, Viktor K. Jirsa). See the [LICENSE_software](LICENSE_software) file and please note that some exceptions apply. The didactic contents (tex, pdfs, figures, etc) are licensed by a Creative Commons BY-NC-SA License (Copyright (c) 2018, Viktor K. Jirsa). See the [LICENSE_tex](LICENSE_tex) file. 





