//Ejercicio 2) - Señal ruido blanco
N=1000
f=100;
dt=1/f
t=0:dt:(N-1)*dt
Y=grand(1,N,"nor",0,1)

figure(1)
subplot(3,1,1)
xgrid;
title("Ruido Blanco")
xlabel("t[s]")
plot(t,Y)

//a) autocorrelacion
j=2*N
R=zeros(1,j)
suma=0
for m =(-N+1):(N-1)
    for i=0:(N-abs(m)-1)
        suma=Y(i+abs(m)+1)*Y(i+1)
        R(m+N)=R(m+N)+suma 
        end
end
Rx=R/N
figure(2)
subplot(3,1,2)
xgrid;
title("Función de Autocorrelación")
xlabel("k")
plot((1-N):(length(Rx)-N),Rx)
h=get("current_axes");
h.data_bounds=[-20;20;-0.1;1.1;0;0];


//b) densidad espectral de potencia
Sw=fftshift(abs(fft(Rx)).^2)
fw=linspace(-100,100,length(Sw))
figure(3)
subplot(3,1,3)
xgrid;
title("Densidad Espectral de Potencia")
xlabel("f[Hz]")
plot(fw,Sw)

