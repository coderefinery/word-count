#!/usr/bin/env bash

# loop over all books to count words and plot the frequency of the 10 most common words per book

for title in abyss isles last sierra; do
    python code/count.py data/${title}.txt > statistics/${title}.data
    python code/plot.py --data-file statistics/${title}.data --plot-file plot/${title}.png
done
