//Ejercicio 1) (continuacion)
N=200// realizaciones
M=200 // duracion en tiempo

Y1=rp1(N,M)
r1=zeros(M,M);
for i1=1:M
    for j1=1:M
        u1=Y1(:,i1)
        v1=Y1(:,j1)     
        r1(i1,j1)=sum(u1.*v1)
        end
end
R1=r1/N
figure(1)
xlabel("U")
ylabel("V")
zlabel("R")
title("Autocorrelación de RP1")
surf(R1)


Y2=rp2(N,M)
r2=zeros(M,M);
for i2=1:M
    for j2=1:M
        u2=Y2(:,i2)
        v2=Y2(:,j2)     
        r2(i2,j2)=sum(u2.*v2)
        end
end
R2=r2/N
figure(2)
xlabel("U")
ylabel("V")
zlabel("R")
title("Autocorrelación de RP2")
surf(R2)


Y3=rp3(N,M)
r3=zeros(M,M);
for i3=1:M
    for j3=1:M
        u3=Y3(:,i3)
        v3=Y3(:,j3)     
        r3(i3,j3)=sum(u3.*v3)
        end
end
R3=r3/N
figure(3)
xlabel("U")
ylabel("V")
zlabel("R")
title("Autocorrelación de RP3")
surf(R3)


