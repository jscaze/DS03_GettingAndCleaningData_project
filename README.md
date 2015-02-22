---
title: "README.md"
author: "Jean-Sebastien CAZE"
date: "2015-02-22"
output: html_document
Coursera - Getting and Cleaning Data - Course project - README
---

===========
### Course project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected..
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for the project:

Content of the delivery
====================

1. The raw data:[here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. A tidy data set (result of the run the run_analysis.R - cf The instruction list/script) 
3. A code book describing each variable and its values in the tidy data set.  (cf https://github.com/jscaze/DS03_GettingAndCleaningData_project/)
4. An explicit and exact recipe we used to go from 1 -> 2,3 (In THIS READ ME - cf The instruction list/script)

### The raw data
Here are the [data](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) for the project.

### The tidy data set
 * A tidy data set (result of the run the run_analysis.R - cf The instruction list/script) 
 * a file for the answer of question 5 : resultQ5.txt (to generate it, please follow The instruction list/script)

### The code book
 * cf https://github.com/jscaze/DS03_GettingAndCleaningData_project/
 
### The instruction list/script
1. Step 1 - download [getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Step 2 - unzip the file downloaded into your folder
3. Step 3 - launch R
4. Step 4 - download the R script run_analysis.R and put it in the same folder(cf STEP 2)
5. Step 5 - Open R studio or R console
6. Step 6 - run the command (cf STEP 2): setwd("Path where you put run_analysis.R")
7. Step 7 - run the command : source("run_analysis.R")
8. Step 8 - run the command : dfTinyDF <- run_analysis(".")
9. Step 9 - to run question 5 run the command : run_summary(".")
	    file will be generated in your current folder (cf STEP6). Name of the file : resultQ5.txt

Selection of the Field
====================

As you probably noticed, I decided to select only the field which contain "mean()" or "std()". 
To my understanding, only the value with "mean()" or "std()" are the facts that we want to keep.

Contributors
====================
* [Jean-Sebastien CAZE](http://github.com/jscaze/)
