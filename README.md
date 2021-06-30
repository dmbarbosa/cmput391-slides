Last edit June 30 2021 by Denilson Barbosa.


# About

These slides were created for CMPUT391, the second course in database management
systems offered at the University of Alberta. 


# LICENSE

These slides are the work of Denilson Barbosa, with suggested corrections and 
improvements by (in alphabetical order) C. Bins, D. Caminhas, K. Guhzva, 
Q. Lautischer, E. Macdonald, M. A. Nascimento, K. Newbury, M. Strobl, D. Sunderman, 
K. Wang, and K. Wong.

This work is licensed under [Creative Commons Attribution International 4.0 (CC BY 4.0)](https://creativecommons.org/licenses/by/4.0/). 

**You are free to**:
* Share — copy and redistribute the material in any medium or format
* Adapt — remix, transform, and build upon the material for any purpose, even commercially.

**Under the following terms** 
* Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made. You may do so in any reasonable manner, but not in any way that suggests the licensor endorses you or your use.
* No additional restrictions — You may not apply legal terms or technological measures that legally restrict others from doing anything the license permits.



# Requirements

All slide decks can be built without modification using *Xelatex* (last tested
with `XeTeX 3.14159265-2.6-0.999992 (TeX Live 2020)`). 

Some slide decks have animations. To produce handouts, the `handout` option 
must be un-commented in the respective main tex file.


# Makefile

`make slides` goes inside each `lecXX...` folder and runs `xelatex` twice on the
main file to get the slide numbers and references right. The dependencies on the 
`pdf` file are on all `.tex` files.

`make handouts` checks that all lecture PDF files are up to date and then calls
`pdfjam` (which works on a mac) to produce the `2up` handout files. The output
folder is specified via a variable in the make file.

