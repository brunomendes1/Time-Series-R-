# Basic Exploratory analysis and minimal pre-processing of the data

head(bit.seconds)

 plot(bit.seconds[,7])

 I= abs(fft(bit.seconds[,7])/sqrt(1221989))^2

scaled_I= 4/1221989*I

plot(scaled_I)

log.price.mins <- log(bit.seconds[,7])

rate.returns <- rep(0.0,1221989)

for (i in 2:1221989){
 rate.returnns[i] = (bit.seconds[i,7]-bit.seconds[i-1,7])/bit.seconds[i-1,7]
}
