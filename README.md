This repository contains 4 files: 

- README.md: current file, explains how all of the scripts work and how they are connected

- output.txt: a tidy data set, generated from a public data set via certain transformations. These
transformations include:
       1) Merging two data sets (training and test sets) to create a single data set.
       2) Sub-setting data to those variables which are mean values or standard deviation values of 
	       measured data. 
       3) naming the variables in a meaningful and descriptive way
       4) labelling the data set with descriptive variable names just created. 
       5) generating an independent tidy data set with the average of each variable 
          for each activity and each subject.
		  
- CodeBook.txt: contains a description of the variables, the data, the transformations performed 
to arrive at the clean data set.

- run_analysis.R: an R-script that implements the above transformation, starting from downloading
the data, unzipping it, reading the data, applying all transformations, and finally generating the
tidy data set.

These files can be used in the following order:

		1-read the README.md file
		2-run the run_analysis.R script (e.g. in R-Studio)
		3-read the CodeBook to get a sense of the data in the data set
		4-explore the data further using the graphics and other available R-tools 
                    