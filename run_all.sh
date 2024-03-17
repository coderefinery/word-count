python code/count.py data/isles.txt > statistics/isles.data
python code/plot.py --data-file statistics/isles.data --plot-file plot/isles.png

python code/count.py data/abyss.txt > statistics/abyss.data
python code/plot.py --data-file statistics/abyss.data --plot-file plot/abyss.png

python code/count.py data/last.txt > statistics/last.data
python code/plot.py --data-file statistics/last.data --plot-file plot/last.png

python code/count.py data/sierra.txt > statistics/sierra.data
python code/plot.py --data-file statistics/sierra.data --plot-file plot/sierra.png
