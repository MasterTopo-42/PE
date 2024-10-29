//Ejercicio 1)
N=1// realizaciones
M=200 // duracion en tiempo


//RP1 
Y1=rp1(N,M)
figure(1)

subplot(3,1,1)
xgrid;
title("Realizaciones de RP1")
plot(Y1')

M1=mean(Y1','c')
subplot(3,1,2)
xgrid;
title("Media de RP1")
plot(M1)

V1=variance(Y1')
xgrid;
subplot(3,1,3)
title("Variancia de RP1")
plot(V1)


media=zeros(1,1000)
for i=1:1000
Y=rp3(N,M)
media(i)=mean(Y)
end
figure(1)
plot(media)

varianza = zeros(1, 1000);
for i=1:1000
Y=rp3(N,M)
varianza(i)=variance(Y)
end
figure(2)
plot(varianza)


//RP2
Y2=rp2(N,M)
figure(2)

subplot(3,1,1)
xgrid;
title("Realizaciones de RP2")
plot(Y2')

M2=mean(Y2','c')
subplot(3,1,2)
xgrid;
title("Media de RP2")
plot(M2)

V2=variance(Y2',"c")
xgrid;
subplot(3,1,3)
title("Variancia de RP2")
plot(V2)


//RP3
Y3=rp3(N,M)
figure(3)

subplot(3,1,1)
xgrid;
title("Realizaciones de RP3")
plot(Y3')


M3=mean(Y3','c')
subplot(3,1,2)
xgrid;
title("Media de RP3")
plot(M3)


V3=variance(Y3',"c")
subplot(3,1,3)
xgrid;
title("Variancia de RP3")
plot(V3)









