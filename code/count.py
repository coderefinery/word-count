from collections import defaultdict
import click


@click.command()
@click.argument("path", type=click.Path(exists=True))
def main(path):
    """
    Count the number of times each word appears in a file and print 10 most common.
    """
    delimiters = ". , ; : ? $ @ ^ < > # % ` ! * - = ( ) [ ] { } / \" '".split()
    counts = defaultdict(int)

    for line in open(path, "r").readlines():

        # replace all delimiters with spaces
        for delimiter in delimiters:
            line = line.replace(delimiter, " ")

        # split the lowercased line into words and increase count
        for word in line.lower().split():
            counts[word] += 1

    # print 10 most common words
    for word, count in sorted(counts.items(), key=lambda x: x[1], reverse=True)[:10]:
        print(word, count)


if __name__ == "__main__":
    main()
