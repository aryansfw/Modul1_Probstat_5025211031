# Nomor 1A
x <- 3
prob <- 0.20
peluang <- dgeom(x, prob)
print(paste("Peluang =", peluang))

# Nomor 1B
n_data <- 10000
dist <- rgeom(n_data, prob)
mean <- mean(dist == 3)
print(paste("Mean =", mean))

# Nomor 1C
# Pada poin a, peluang selalu konstan, sedangkan pada poin b, mean
# peluang dapat berubah-ubah namun selalu mendekati peluang poin a.
# Hal ini berarti meskipun distribusi geometrik dilakukan secara acak,
# mean pada poin b tetap akan mendekati peluang pada poin a

# Nomor 1D
hist(dist,
    main = "Histogram Distribusi Geometrik",
    col = "#a3c6f7",
    xlab = "X",
    xlim = c(0, 30),
    ylim = c(0, 5000),
    breaks = 50)

# Nomor 1E
rataan <- 1 / prob
varian <- (1 - prob) / prob^2
print(paste("Rataan =", rataan))
print(paste("Varian =", varian))