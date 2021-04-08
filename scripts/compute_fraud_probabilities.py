def compute_probability_1_out_of_n(f, n):
    return f**n


def compute_probability_n_out_of_n(f, n):
    return 1 - (1 - f)**n


# n-out-of-n
with open("../data/probabilities_n_out_of_n.csv", "w") as out_file:
    out_file.write("n,f,p\n")
    for n in [1, 2, 3, 4, 5]:
        for f in [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]:
            out_file.write("%d,%f,%f\n" % (n, f, compute_probability_n_out_of_n(f, n)))


# 1-out-of-n
with open("../data/probabilities_1_out_of_n.csv", "w") as out_file:
    out_file.write("n,f,p\n")
    for n in [1, 2, 3, 4, 5]:
        for f in [0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1]:
            out_file.write("%d,%f,%f\n" % (n, f, compute_probability_1_out_of_n(f, n)))
