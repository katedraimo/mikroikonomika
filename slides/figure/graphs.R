# define colors that are colorblind

cwcher <- "#000000"
cwkerem <- "#D55E00"
cwsin <- "#0072B2"
cwzel <- "#009E73"
cworange <- "#E69F00"
cwnebesno <- "#56B4E9"
cwzhylt <- "#F0E442"
cwlilaw <- "#CC79A7"


# Indifference curve

png(filename = "l3_indif_curve.png", width = 800, height = 600, res = 100)

prX <- c(3,5,7,9,11,13,15)
prY <- c(27,17,10,7,4,2,1)
prX2 <- prX + 3
prY2 <- prY + 3
plot(prX, prY, type = "o", xlim = c(0,20), ylim = c(0,32), 
     xaxs = "i", yaxs = "i", lwd = 2, pch = 20, bty = "n",
     xlab = "Продукт X", ylab = "Продукт Y",
     main = "Крива на безразличието")
grid()
text(4,28, "A")
text(6.5,18, "B")
text(8,11, "C")
text(10,8, "D")
text(12,5, "E")
text(14,3, "F")
text(16,2, "G")

dev.off()


# Indifference curve with MRS

png(filename = "l3_indif_curve_MRS.png", width = 800, height = 600, res = 100)

plot(prX, prY, type = "o", xlim = c(0,20), ylim = c(0,32), 
     xaxs = "i", yaxs = "i", lwd = 2, pch = 20, bty = "n",
     xlab = "Продукт X", ylab = "Продукт Y",
     main = "Крива на безразличието")
grid()
arrows(3,27,3,17, lty = 5, col = cwnebesno, length = 0.1)
arrows(3,17,5,17, lty = 5, col = cwnebesno, length = 0.1)
arrows(7,10,7,7, lty = 5, col = cwnebesno, length = 0.1)
arrows(7,7,9,7, lty = 5, col = cwnebesno, length = 0.1)
arrows(13,2,13,1, lty = 5, col = cwnebesno, length = 0.1)
arrows(13,1,15,1, lty = 5, col = cwnebesno, length = 0.1)
points(9,17, pch = 20)
text(10,18, "H (9,17)")
text(4,28, "A")
text(6.5,18, "B (5,17)")
text(8,11, "C")
text(10,8, "D (9,7)")
text(12,5, "E")
text(14,3, "F")
text(16,2, "G")
text(2,22, expression(paste(Delta, "Y = -10")), srt = 90, adj = 0.5, cex = 0.7) 
text(4,16, expression(paste(Delta, "X = 2")), adj = 0.5, cex = 0.7)
text(6,8.5, expression(paste(Delta, "Y = -2")), srt = 90, adj = 0.5, cex = 0.7)
text(8,6, expression(paste(Delta, "X = 2")), adj = 0.5, cex = 0.7)
text(16,22, expression("A"%->%"B"~~~~~~"MRS"[XY]~"="~frac(paste(Delta, "Y"), paste(Delta, "X"))~"="~frac(paste("-10"),paste(2))~"="~"-5"), cex = 0.7)
text(16,8.5, expression("C"%->%"D"~~~~~~"MRS"[XY]~~"="~~frac(paste(Delta, "Y"), paste(Delta, "X"))~~"="~~frac(paste("-2"), paste("2"))~~"="~~"-1"), cex = 0.7)

dev.off()




# Shift of the indifference curve

png(filename = "l3_indif_curve_shift.png", width = 800, height = 600, res = 100)

plot(prX, prY, type = "o", xlim = c(0,20), ylim = c(0,32), 
     xaxs = "i", yaxs = "i", lwd = 2, pch = 20, bty = "n",
     xlab = "Продукт X", ylab = "Продукт Y",
     main = "Криви на безразличието")
grid()
points(9,17, pch = 20)
text(10.5,18, "H (9,17)")
text(6.5,18, "B (5,17)")
text(10.5,8, "D (9,7)")
text(3,28, expression("IC"[1]))
text(6.5,30, expression("IC"[2]), adj = 0)
text(10,26, expression("IC"[2]~"полезност"~">"~"IC"[1]~"полезност"), adj = 0)
lines(prX2, prY2, type = "l", col = cwsin , lwd = 2)
segments(0,17,9,17, lty = 2, col = cwnebesno)
segments(9,0,9,17, lty = 2, col = cwnebesno)

dev.off()

# Budget line

png(filename = "l3_budget_line.png", width = 800, height = 600, res = 100)

plot(x = c(0,15), y = c(30,0), xlim = c(0,25), ylim = c(0,35),
     type = "l", lwd = 2, bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици", 
     xaxs = "i", yaxs = "i",
     main = "Бюджетно ограничение")
grid()

dev.off()


# Budget line price change

png(filename = "l3_budget_line_price_change.png", width = 800, height = 600, res = 100)

plot(x = c(0,15), y = c(30,0), xlim = c(0,35), ylim = c(0,35),
     type = "l", lwd = 2, bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици", 
     xaxs = "i", yaxs = "i",
     main = "Бюджетно ограничение, промяна в цената на X")
grid()
lines(x = c(0,30), y = c(30,0), col = cwsin, lwd = 2)
points(10,10, pch = 20)
text(11,11, "A")
points(20,10, pch = 20)
text(21,11, "B")
arrows(15,2,27,2, length = 0.1, col = cwnebesno, lwd = 1)

dev.off()


# Budget line change

png(filename = "l3_budget_line_change.png", width = 800, height = 600, res = 100)


plot(x = c(0,15), y = c(30,0), xlim = c(0,70), ylim = c(0,70),
     type = "l", lwd = 2, bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици", 
     xaxs = "i", yaxs = "i",
     main = "Промяна в бюджетното ограничение при неизменни цени")
grid()
lines(x = c(0,30), y = c(60,0), col = cwsin, lwd = 2)
points(10,10, pch = 20)
text(11,11, "A")
points(20,20, pch = 20)
text(21,21, "B")
arrows(1,31,9,39, length = 0.1, col = cwnebesno, lwd = 1)
arrows(16,1,24,9, length = 0.1, col = cwnebesno, lwd = 1)

dev.off()


# Consumer choice model

png(filename = "l3_consumer_choice_model.png", width = 800, height = 600, res = 100)

lineX <- seq(3,30, 0.5)
lineY <- 100/lineX
plot(lineX, lineY, type = "l", xaxs = "i", yaxs = "i", lwd = 2, col = cwkerem,
     xlim = c(0,35), ylim = c(0,35), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Модел на потребителския избор")
grid()
lines(x = c(0,30), y = c(30,0), type = "l", col = cwsin, lwd = 2)
lines(x = lineX + 5, y = lineY + 5, type = "l", lwd = 2)
lines(x = lineX + 10, y = lineY + 10, type = "l", lwd = 2, col = cwkerem)
points(4,26, pch = 20)
points(26,4, pch = 20)
points(10,10, pch = 20)
points(13,13, pch = 20)
points(15,15, pch = 20)
points(20,20, pch = 20)
text(5,27, "A")
text(27,5, "B")
text(11,10, "C", adj = 0)
text(14,13, "D")
text(16,16, "E")
text(21,21, "F")
text(5,34, expression("IC"[1]))
text(10,34, expression("IC"[2]))
text(15,34, expression("IC"[3]), adj = 0)

dev.off()


png(filename = "l3_consumer_choice_change.png", width = 800, height = 600, res = 100)

plot(lineX, lineY, xaxs = "i", yaxs = "i", 
     type = "n", lwd = 2, col = cwcher,
     xlim = c(0,70), ylim = c(0,50), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Модел на потребителския избор,\nпромяна в цената на X")
grid()
lines(x = c(0,30), y = c(30,0), type = "l", col = cwsin, lwd = 2)
lines(x = c(0,60), y = c(30,0), type =  "l" ,col = cwkerem, lwd = 2)
lines(x = lineX + 5, y = lineY + 5, type = "l", lwd = 2)
lines(x = lineX + 10.625, y = lineY + 10.625, type = "l", lwd = 2, col = cwzel)
points(15,15, pch = 20)
points(24,18, pch = 20)
text(16,17, "E")
text(26,19, "G", adj = 0)
text(11,38, expression("IC"[1]))
text(15,43, expression("IC"[2]), adj = 0)

dev.off()


# Криви на безразличие, изразяващи различно предпочитение към едно или друго благо

lineX <- seq(3,30, 0.5)
# from Cobb-Douglas 10 = x^0.3*y^0.7
lineYprefY <- (10 / lineX^(0.3))^(1/0.7)
# from Cobb-Douglas 10 = x^0.7*y^0.3
lineYprefX <-  (10/ seq(7,22, 0.5)^(0.7))^(1/0.3)

png(filename = "l3_curves_different_preferences.png", width = 800, height = 600, res = 100)

plot(lineX, lineYprefY, type = "l", xaxs = "i", yaxs = "i", lwd = 2, col = cwsin,
     xlim = c(0,35), ylim = c(0,35), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Криви, отразяващи различни предпочитания")
grid()
lines(x = seq(7,22, 0.5), y = lineYprefX, col = cwkerem)
text(5,17, expression("IC"[1]))
text(8,24, expression("IC"[2]))

dev.off()


# Price subsidy
png(filename = "l3_price_subsidy.png", width = 800, height = 600, res = 100)

plot(seq(5,150,1), y = 2500/seq(5,150,1), type = "l", xaxs = "i", yaxs = "i", lwd = 2, col = cwsin,
     xlim = c(0,200), ylim = c(0,200), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Субсидия в цената на продукт X")
grid()
lines(x = c(0,100), y = c(100,0), type = "l", col = cwsin, lwd = 2)
# x = 50, y = 50

# Субсидия в цената
lines(x = c(0,200), y = c(100,0), type = "l", col = cwzel, lwd = 2)
lines(x = seq(5,150,1), y = 5000/seq(5,150,1), col = cwzel, lwd = 2)
# x = 100, y = 50

dev.off()


png(filename = "l3_price_and_income_subsidy.png", width = 800, height = 600, res = 100)

plot(seq(5,150,1), y = 2500/seq(5,150,1), type = "l", xaxs = "i", yaxs = "i", lwd = 2, col = cwsin,
     xlim = c(0,200), ylim = c(0,200), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Субсидия в цената и субсидия в дохода")
grid()
lines(x = c(0,100), y = c(100,0), type = "l", col = cwsin, lwd = 2)
# x = 50, y = 50

# Субсидия в цената
lines(x = c(0,200), y = c(100,0), type = "l", col = cwzel, lwd = 2)
lines(x = seq(5,150,1), y = 5000/seq(5,150,1), col = cwzel, lwd = 2)
# x = 100, y = 50

# Субсидия на дохода
lines(x = c(0,150), y = c(150,0), type = "l", col = cwkerem, lwd = 2)
lines(x = seq(5,150,1), 5625/seq(5,150,1), col = cwkerem, lwd = 2)
# x = 75, y = 75

dev.off()

# Income and substitution effect - price increase

# Price subsidy
png(filename = "l3_price_subsidy.png", width = 800, height = 600, res = 100)

plot(seq(5,150,1), y = 2500/seq(5,150,1), type = "l", xaxs = "i", yaxs = "i", lwd = 2, col = cwsin,
     xlim = c(0,200), ylim = c(0,200), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Субсидия в цената на продукт X")
grid()
lines(x = c(0,100), y = c(100,0), type = "l", col = cwsin, lwd = 2)
# x = 50, y = 50

# Субсидия в цената
lines(x = c(0,200), y = c(100,0), type = "l", col = cwzel, lwd = 2)
lines(x = seq(5,150,1), y = 5000/seq(5,150,1), col = cwzel, lwd = 2)
# x = 100, y = 50

lines(x = c(0,100*2^0.5), y = c(100*2^0.5, 0), type = "l", col = cwzhylt, lwd = 2)
# x = 50*2^0.5, y = 50*2^0.5

# Income and substitution effect - price decrease of X

png(filename = "l3_income_and_substitution.png", width = 800, height = 600, res = 100)

plot(seq(5,150,1), y = 2500/seq(5,150,1), type = "l", xaxs = "i", yaxs = "i", lwd = 2, col = cwsin,
     xlim = c(0,200), ylim = c(0,200), bty = "n",
     xlab = "Продукт X, единици", ylab = "Продукт Y, единици",
     main = "Ефект на заместването и на дохода при намаление в Px")
grid()
lines(x = c(0,100), y = c(100,0), type = "l", col = cwsin, lwd = 2)
# x = 50, y = 50

# Субсидия в цената
lines(x = c(0,200), y = c(100,0), type = "l", col = cwzel, lwd = 2)
lines(x = seq(5,150,1), y = 5000/seq(5,150,1), col = cwzel, lwd = 2)
# x = 100, y = 50

lines(x = c(0,100*2^0.5), y = c(50*2^0.5, 0), type = "l", col = cwzhylt, lwd = 2)

lines(x = c(50*2^0.5, 50*2^0.5), y = c(0, 25*2^0.5), type = "l", col = cwnebesno, lty = "dashed")
lines(x = c(0, 50*2^0.5), y = c(25*2^0.5, 25*2^0.5), type = "l", col = cwnebesno, lty = "dashed")


lines(x = c(100, 100), y = c(0, 50), type = "l", col = cwnebesno, lty = "dashed")
lines(x = c(0, 100), y = c(50, 50), type = "l", col = cwnebesno, lty = "dashed")

lines(x = c(50,50), y = c(0, 50), type = "l", col = cwnebesno, lty = "dashed")

dev.off()
