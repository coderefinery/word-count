[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/coderefinery/word-count/HEAD)

# Word count example

This example project will count words in a given text and plot a bar chart of the 10
most common words.

![](https://coderefinery.github.io/reproducible-research/_images/arrows.png)

## Dependencies

See `environment.yml`.


## Usage

In this example we wish to: 
1. Analyze word frequencies using [statistics/count.py](https://github.com/coderefinery/word-count/blob/main/statistics/count.py)
   for 4 books (they are all in the [data](https://github.com/coderefinery/word-count/tree/main/data) directory).
2. Plot a histogram using [plot/plot.py](https://github.com/coderefinery/word-count/blob/main/plot/plot.py)

For one book (`isles.txt`) use the scripts like this:
```
$ python code/count.py data/isles.txt > statistics/isles.data
$ python code/plot.py --data-file statistics/isles.data --plot-file plot/isles.png
```

To run the scripts on all books you can run the bash script `bash run_all.sh`. 

### Workflow

Implemented using Snakemake in `Snakefile`.

### Tests

End to end tests are provided in the test directory.

## Acknowledgement

Inspired by and derived from https://hpc-carpentry.github.io/hpc-python/
  which is distributed under
  [Creative Commons Attribution license (CC-BY 4.0)](https://creativecommons.org/licenses/by/4.0/).

## CodeRefinery workshop

We use this example in the CodeRefinery workshop in this lesson:
- https://coderefinery.github.io/reproducible-research/
