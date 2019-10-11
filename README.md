MATHS 4Biology 
===============

# MSc Computational Methods in Ecology and Evolution, Imperial College London.

## Synopsis

This project contains supporting notes and scripts for the course "Maths for Biology"
of the Master in Computational Methods in Ecology and Evolution at 
Imperial College London. It is a fork of the the 
[project](https://github.com/vjirsa/bootcamp) "Mathematics Boot Camp" proposed
by [Viktor Jirsa](http://ins.univ-amu.fr/research-teams/team-member/v.jirsa/)
for graduate courses at the Center for Complex Systems \& Brain Sciences at Florida
Atlantic University. Similar in spirit, by no means it is intended to compete with the
traditional introductory courses in mathematics taught at universities. Rather it should
be viewed as a synopsis of the mathematical tools most probably encountered in scientific
applications. With respect to Jistra's notes, the present project expands
some of the topics, and it further includes First-Order Differential Equations, of oustanding importance
in Ecology. On the other hand, Fourier analysis is not considered in the course, although it is kept in the repository for completeness.


Current version: Zürich, Switzerland, December 2018.

## Contents

The repository includes tex files with the contents of the course and a directory with Matlab scripts to generate the figures used in the tex document. The text is organized in different files labelled as `Final_day$number.tex`, where `$number` stands for the order of the chapter. These files can be then included as desired in a main file containing the headers of the document, called `Final.tex`. In addition, there are a number of tests called `Final_test$number.tex`, which should be compiled individually. I also included some homework in the folder
exercises, whose solutions are available upon request.

### Downloading all the repository

The code is hosted in a public repository in [github.com](https://github.com/apascualgarcia/maths4biology). The simplest way to download the code is using `git`, which can be installed on Debian-based systems with

```bash
sudo apt-get install git
```

If `git` is already installed, change to a directory of your choice and clone the repository

```bash
git clone https://github.com/apascualgarcia/maths4biology.git
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

I acknowledge to Viktor Jirsta his enthusiastic support to create
a public respository for his project, which allowed me to fork it
and modify to be adapted to the present course. I would also like  
to thank to all past contributors of Jirsta's course.


## License

Two different licenses are granted in this repository, one for the code and another one for the didactic contents.

This code is licensed by a MIT License (Copyright (c) 2018, Viktor K. Jirsa). See the [LICENSE_software](LICENSE_software) file and please note that some exceptions apply. The didactic contents (tex, pdfs, figures, etc) are licensed by a Creative Commons BY-NC-SA License (Copyright (c) 2018, Viktor K. Jirsa and Alberto Pascual-García). See the [LICENSE_tex](LICENSE_tex) file. 





