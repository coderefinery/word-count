import matplotlib.pyplot as plt
import click


def plot_bar_chart(x_values, y_values, title, plot_file):
    plt.figure(figsize=(10, 5))
    plt.bar(x_values, y_values)
    plt.title(title)
    plt.savefig(plot_file)


@click.command()
@click.option(
    "--data-file", required=True, help="Input data file", type=click.Path(exists=True)
)
@click.option("--plot-file", required=True, help="Output plot file")
def main(data_file, plot_file):
    # read data from input_file
    x_values = []
    y_values = []
    for line in open(data_file, "r").readlines():
        word, count = line.split()
        x_values.append(word)
        y_values.append(int(count))

    # now plot the data
    plot_bar_chart(x_values, y_values, "10 most common words", plot_file)


if __name__ == "__main__":
    main()
