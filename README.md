# buthesis-2022
New template for the Brock Physics thesis template. This template follows the Brock University, Faculty of Graduate Studies E-Thesis Format Specifications  from November, 2021. It uses the "Monograph Format".

Place all files into your Overleaf account.

## Document data
Files are structured like the thesis.
1. [buthesis.tex] which imports
  1. [introduction.tex]
  2. [methods.tex]
  3. [results.tex]
  4. [conclusion.tex]
  5. [appendix.tex]
  6. [bibliography.bib]

Near the top of [butesis.tex] edit these lines with your information.

```latex
%==============================================================================
% ----------------- DOCUMENT INFORMATION FOR PDF CREATION ---------------------
\def\Author{Your Name}
\def\Title{Title of Your Thesis}
% ----------------------------
\def\Year{2022}
\def\Month{01}
\def\Day{31}
% ----------------------------
\def\Subtitle{}
\def\Subject{}
\def\Keywords{Brock University, Physics, Pyrochlore, PPMS} % COMMA SEPARATED LIST OF KEY WORDS/PHRASES
% ----------------------------
\def\URL{https://www.overleaf.com/read/abcdefghij} % SHARE URL TO OVERLEAF PROJECT
% ----------------------------
\toggletrue{use-cc-license}
%\togglefalse{use-cc-license}
\makepdfa
%==============================================================================
```

## Style

### Font&Type Face
This template uses 12pt Stix2 throughout. Only use `\textbf{]` and `\textit{}` to add bold and italic text.

### Spacing
The default spacing is single spaced, and the Abstract is set to double space. For 12pt, this is quite nice. If you want to use larger spacing, this can be changed in the [buthesis.cls] file, by changing
```latex
\renewcommand{\baselinestretch}{1.0} % Line spacing
```
to
```latex
\renewcommand{\baselinestretch}{1.5} % or 2.0 
```
### Margins
From the guidelines:

> If you intend to bind any copies, you will need a minimum left-hand margin of 1.5 inches (3.8 cm).

This can be done in the [buthesis.cls] file, by changing
```latex
\RequirePackage[paper=letterpaper,left=1.25in,right=1.25in,top=1in,bottom=1in]{geometry}
```
to
```latex
\RequirePackage[paper=letterpaper,left=1.5in,right=1in,top=1in,bottom=1in]{geometry}
```

## Page Numbering

The pages should be numbered correctly without any changes. The prefatory pages are not numbered. All other pages, beginning with the Introduction or Chapter 1, are numbered consecutively with Arabic numbers.

## Abstracts and Key Words

Keep the Abstract to 350 words max, without graphs, charts, tables, or illustrations

## Bibliography.
Default format is square brackets for citation numbers in text, and American Physical Society format. By using biblatex and biber, you have complete freedom to choose other formats, and set up separate sections of the bibliography as you see fit.

## Numbers and units
This style uses the `siunitix` package. 