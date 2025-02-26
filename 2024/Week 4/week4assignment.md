# Assignment Week 4

Please complete the following tasks. Submit the assignment as a single R script. Use comments and sections to give your file structure.

## What do the following evaluate to and why?

     !TRUE
    FALSE + 0
    5 & TRUE
    0 & TRUE
    1 - FALSE
    FALSE + 1
    1 | FALSE
    FALSE | NA

## Have the moses.csv data saved in your environment as "moses". Why do the following fail?

    Summary(moses)
    read_csv(moses.csv)
    tail(moses, n==10)
    describe(Moses)
    filter(moses, CONDITION == 102)
    arragne(moses, ID)
    mutate(moses, ITEMS = as.character("ITEM")) 

## Clean up the Moses illusion data like we did in the tasks in class and save it to a new data frame. Use pipes instead of saving each step to a new data frame.

- select relevant columns
- rename mislabeled columns
- remove missing data
- remove unnecessary rows
- change the item column to numeric values
- arrange by item, condition, and answer

## From the Moses illusion data, make two new variables (printing and dont.know, respectively) with all answers which are supposed to mean "printing (press) and "don't know".

## Preprocess noisy channel data.

Make two data frames: for reading times and for acceptability judgments.

### Acceptability ratings

- rename the ID column and column with the rating
- only data from the experiment (see `Label`) and where `PennElementType` IS "Scale"
- make sure the column with the rating data is numeric
- select the relevant columns: participant ID, item, condition, rating
- remove missing values

### Reading times

- rename the ID column and column with the full sentence
- only data from the experiment (see `Label`)
- only data where `PennElementType` IS NOT "Scale" or "TextInput"
- only data from where Reading.time is not "NULL" (as a string)
- make a new column with reading times as numeric values
- keep only those rows with realistic reading times (between 80 and 2000 ms)
- select relevant columns: participant ID, item, condition, sentence, reading time, and Parameter
- remove missing values

## Solve the logic exercise from the slides.
