# Nomor 1
cat("Nomor 1:\n")
# Nomor 1A
x <- 3
p <- 0.20
peluang <- dgeom(x, p)
cat(paste("a. Peluang =", peluang, "\n"))

# Nomor 1B
n_data <- 10000
dist <- rgeom(n_data, p)
mean <- mean(dist == x)
cat(paste("b. Mean =", mean, "\n"))

# Nomor 1C
cat("c. Pada poin A, peluang selalu konstan, sedangkan pada poin B, mean dapat
   berubah-ubah karena menggunakan nilai-nilai random. Jadi, dapat disimpulkan
   bahwa nilai peluang pada poin A selalu tetap sedangkan mean pada poin B
   selalu berubah.\n")

# Nomor 1D
cat("d. (Grafik Histogram Distribusi Geometrik)\n")
hist(dist,
    main = "Histogram Distribusi Geometrik",
    col = "#a3c6f7",
    xlab = "X")

# Nomor 1E
rataan <- 1 / p
varian <- (1 - p) / p^2
cat(paste("e. Rataan =", rataan, "\n"))
cat(paste("   Varian =", varian, "\n"))


# Nomor 2
cat("\nNomor 2:\n")

# Nomor 2A
n <- 20
p <- 0.2
x <- 4
peluang <- dbinom(x, n, p)
cat(paste("a. Peluang =", peluang, "\n"))

# Nomor 2B
dist <- rbinom(10000, n, p)
cat("b. (Histogram Distribusi Binomial)\n")
hist(dist,
    main = "Histogram Distribusi Binomial",
    col = "#e81e36",
    xlab = "X")

# Nomor 2C
rataan <- n * p
varian <- n * p * (1 - p)
cat(paste("c. Rataan =", rataan, "\n"))
cat(paste("   Varian =", varian, "\n"))

# Nomor 3
cat("\nNomor 3:\n")

# Nomor 3A
lambda <- 4.5
x <- 6
peluang <- dpois(x, lambda)
cat(paste("a. Peluang =", peluang, "\n"))

# Nomor 3B
n <- 365
dist <- rpois(365, lambda)
cat("b. (Histogram Distribusi Poisson)\n")
hist(dist,
    main = "Histogram Distribusi Poisson",
    col = "#25db52",
    xlab = "X")

# Nomor 3C
cat("c. Pada poin B, jika jumlah hari terjadi kelahiran 6 bayi dalam setahun
   dibandingkan dengan 365 hari maka hasilnya mendekati peluang pada poin A.
   Jadi, dapat disimpulkan bahwa simulasi distribusi poisson sesuai dengan
   pendistribusi poisson.\n")

# Nomor 3D
rataan <- lambda
varian <- lambda
cat(paste("d. Rataan =", rataan, "\n"))
cat(paste("   Varian =", varian, "\n"))


# Nomor 4
cat("\nNomor 4:\n")

# Nomor 4A
x <- 2
v <- 10
peluang <- dchisq(x, v)
cat(paste("a. Peluang =", peluang, "\n"))

# Nomor 4B
n <- 100
dist <- rchisq(n, v)
cat("b. (Histogram Distribusi Chi-Square)\n")
hist(dist,
    main = "Histogram Distribusi Chi-Square",
    col = "#fff674",
    xlab = "X")

# Nomor 4C
rataan <- v
varian <- 2 * v
cat(paste("c. Rataan =", rataan, "\n"))
cat(paste("   Varian =", varian, "\n"))


# Nomor 5
cat("\nNomor 5:\n")

# Nomor 5A
lambda <- 3
peluang <- dexp(1, lambda)
cat(paste("a. Peluang =", peluang, "\n"))

# Nomor 5B
cat("b. (Histogram Distribusi Exponensial)\n")
n1 <- 10
n2 <- 100
n3 <- 1000
n4 <- 10000
dist1 <- rexp(n1, lambda)
dist2 <- rexp(n2, lambda)
dist3 <- rexp(n3, lambda)
dist4 <- rexp(n4, lambda)
hist(dist1,
    main = "Histogram Distribusi Exponensial 10 Bilangan Random",
    col = "#c28c27",
    xlab = "X")
hist(dist2,
    main = "Histogram Distribusi Exponensial 100 Bilangan Random",
    col = "#c28c27",
    xlab = "X")
hist(dist3,
    main = "Histogram Distribusi Exponensial 1000 Bilangan Random",
    col = "#c28c27",
    xlab = "X")
hist(dist4,
    main = "Histogram Distribusi Exponensial 10000 Bilangan Random",
    col = "#c28c27",
    xlab = "X")

# Nomor 5C
n <- 100
set.seed(1)
dist <- rexp(n, lambda)
rataan <- mean(dist)
varian <- var(dist)
cat(paste("c. Rataan =", rataan, "\n"))
cat(paste("   Varian =", varian, "\n"))

cat("\nNomor 6:\n")

# Nomor 6A
n <- 100
normal_mean <- 50
normal_sd <- 8

data <- rnorm(n, mean, sd)
mean <- mean(data)
sd <- sd(data)

# x1 and x2 are random numbers taken from data that are bigger
# and bigger than the data mean, respectively
x1 <- sample(subset(data, data > mean), 1)
x2 <- sample(subset(data, data < mean), 1)

peluang <- pnorm(x1, mean, sd) - pnorm(x2, mean, sd)
z_score <- qnorm(peluang, mean, sd)

cat(paste("a. Peluang =", peluang, "\n"))
cat(paste("   Z-Score =", z_score, "\n"))
plot(data)

# Nomor 6B
cat("b. (Histogram Distribusi Normal)\n")
hist(data,
    main = "Histogram Distribusi Normal",
    col = "#808080",
    xlab = "X",
    breaks = 50)

# Nomor 6C
varian <- var(data)
cat(paste("c. Varian =", varian, "\n"))