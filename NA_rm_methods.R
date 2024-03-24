getOption("na.action")

(g <- as.data.frame(matrix(c(1:5, NA), ncol = 2)))

na.omit(g)
na.exclude(g)
na.fail(g)
na.pass(g)

head(anscombe)
ans_NA <- within(anscombe, y1[1:3] <- NA)
str(anscombe)

ans_NA






