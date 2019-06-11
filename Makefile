# Build both steps required for executing the character count example
all: processed_data/abyss.dat results/abyss.png results/results.txt

# Count words (Step 1)
processed_data/abyss.dat: data/abyss.txt source/wordcount.py
	python source/wordcount.py data/abyss.txt processed_data/abyss.dat

# Create Bar chart (Step 2)
results/abyss.png: processed_data/abyss.dat source/plotcount.py
	python source/plotcount.py processed_data/abyss.dat results/abyss.png

# Test Zipf's law
results/results.txt: processed_data/abyss.dat source/zipf_test.py
	python source/zipf_test.py processed_data/abyss.dat > results/results.txt

