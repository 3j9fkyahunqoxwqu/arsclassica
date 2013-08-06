# ArsClassica

`LaTeX` thesis template based on *ArsClassica* (version [4.0.3](http://www.ctan.org/pkg/arsclassica)) and *ClassicThesis* (version [4.1](http://www.ctan.org/pkg/classicthesis)) packages with custom and useful additions. 

This template provides the following **enhancements**:

- Completely automated compilation task

- Additional typographical niceties

- Fixes and extensions (see file `settings.tex`):

	- **Bibliography** back-end default to `biber`

    - Support multi-line titles

    - Alternative chapter numbers style

    - Integrated **analytical index**

    - Custom command to indexing terms (e.g., `\keywordsub[category]{term}`)

    - Support for **acronyms**

    - Predefined custom environments (e.g., theorems, definitions)

    - Custom reference examples

    - Predefined **listings environment**

    - Predefined pseudo-code listings language

    - Various utility commands (e.g., `\lwcase` to lowercase the first letter of the word that follows it)

## Prerequisites

- A complete `LaTeX` distribution (e.g., texlive).

- The `make` build automation utility.

## Workflow

The suggested workflow is:

1. Clone this repository:

    `git clone git@github.com:leodido/arsclassica.git`.

2. Create a new branch:

    `cd ~/arsclassica && git checkout -b mythesis`.

3. First-time complete build of the thesis:

    `make -s thesis`.

4. Write a wonderful (not only typographically) thesis. No more excuses.

## Commands

* Remove all the generated files except the PDFs:

    `make -s clean`.

* Remove all the generated files:

    `make -s distclean`.

* Compile the thesis:

    `make -s thesis`.

    This command embeds the correct sequence of commands relevant for the proper compilation of the thesis, including analytical index, bibliography, and title page.

* Update the analytical index:

    `make -s index && make -s tex`.

## Editor

This template does not need any specific editor to work: you can simply use which editor you want.

However, if you prefer to use Sublime Text you can edit and compile it installing [LaTeXTools](https://github.com/SublimeText/LaTeXTools) package. Create a Sublime Text project file containing:

```
{
    "folders":
    [
        {
            "path": ".",
            "file_exclude_patterns": ["*-blx.bib", "*.aux", "*.bbl", "*.blg", "*.fdb_latexmk", "*.lof", "*.log", "*.lot", "*.run", "*.run.xml", "*.synctex", "*.synctex.gz", "*.toc", "*.sublime-project", "*.sublime-project~", "*.sublime-workspace", "*.sublime-workspace~"]
        }
    ],
    "TEXroot": "./arsclassica.tex" 
}
```

Put the project file inside the folder, open Sublime Text and compile it (`CTRL + B`).

## Credits

* [Lorenzo Pantieri](http://www.lorenzopantieri.net),

    author of *ArsClassica* package which is aimed to improve some ty­po­graph­i­cal points of the *Clas­sicTh­e­sis* style.

    Documentation and features explaination ca be found [here](http://ftp.uniroma2.it/TeX/macros/latex/contrib/arsclassica/ArsClassica.pdf).

* [André Miede](http://www.ctan.org/author/miede),
    
    author of *ClassicThesis* package ([link](http://ctan.mirror.garr.it/mirrors/CTAN/macros/latex/contrib/classicthesis/ClassicThesis.pdf)) which pro­vides an el­e­gant lay­out de­signed in homage to Bringhurst’s "The Ele­ments of Ty­po­graphic Style".
