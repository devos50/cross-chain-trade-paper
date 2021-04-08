library(ggplot2)

dat <- read.csv("../../data/probabilities_n_out_of_n.csv")
dat$f <- dat$f * 100
dat$n <- as.factor(dat$n)

# n-out-of-n
p <- ggplot(dat, aes(x=f, y=p, group=n, colour=n)) +
     geom_line() + geom_point() +
     theme_bw() +
     theme(legend.position = c(0.8, 0.3), legend.box.background = element_rect(colour = "black")) +
     ylab("Probability of Alice committing fraud") +
     xlab("Collusion rate (%)")
ggsave("../../assets/fraud_probability_n_out_of_n.pdf", p, width=4, height=4)

# 1-out-of-n
dat <- read.csv("../../data/probabilities_1_out_of_n.csv")
dat$f <- dat$f * 100
dat$n <- as.factor(dat$n)

p <- ggplot(dat, aes(x=f, y=p, group=n, colour=n)) +
     geom_line() + geom_point() +
     theme_bw() +
     theme(legend.position = c(0.2, 0.7), legend.box.background = element_rect(colour = "black")) +
     ylab("Probability of Alice committing fraud") +
     xlab("Collusion rate (%)")
ggsave("../../assets/fraud_probability_1_out_of_n.pdf", p, width=4, height=4)