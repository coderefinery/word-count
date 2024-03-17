# a list of all the books we are analyzing
DATA = glob_wildcards('data/{book}.txt').book

rule all:
    input:
        expand('statistics/{book}.data', book=DATA),
        expand('plot/{book}.png', book=DATA)

# count words in one of our books
rule count_words:
    input:
        script='code/count.py',
        book='data/{file}.txt'
    output: 'statistics/{file}.data'
    shell: 'python {input.script} {input.book} > {output}'

# create a plot for each book
rule make_plot:
    input:
        script='code/plot.py',
        book='statistics/{file}.data'
    output: 'plot/{file}.png'
    shell: 'python {input.script} --data-file {input.book} --plot-file {output}'
