# Laboratorio 5 - Cinemática inversa - Robot PhantomX - ROS

## Integrantes

- Hector Daniel Vargas
- Christian Camilo Cuestas Ibáñez
- Juan José Rojas Álvarez

## Análisis de cinemática inversa

### Modelo de cinemática inversa

Mediante la implementación de la cinemática inversa del PhantomX, como se muestra en el siguiente código, en el que se encuentran la función 'iKine', con la que se obtuvieron las entradas para el robot para cualquier punto de su zona alcanzable.

```matlab
function q = iKine(P,L,Holding)
    q=zeros(1,5);
    R1=sqrt(P(1)^2+P(2)^2);
    X=R1-L(4);
    Z=P(3)-L(1);
    R=sqrt(X^2+Z^2);
    C3=(R^2-(L(2)^2+L(3)^2))/(2*L(2)*L(3));
    S3=-sqrt(1-C3^2);
    q(3)=atan2(S3,C3);
    K2=L(3)*S3;
    K1=L(2)+L(3)*C3;
    Gamma=atan2(K2,K1);
    Delta=atan2(Z,X);
    q(2)=Delta-Gamma;
    q(1)=atan2(P(2),P(1));
    q(4)=-q(2)-q(3);
    q(5)=0;
    if Holding
        q(5)=deg2rad(-87);
    end
end
```

### Espacio de trabajo del robot

## Aplicación de escritura 

## Rutinas de escritura

Teniendo esta función, la cual nos devuelve los parámetros de las articulaciones habiendo definido un punto (x,y,z), planteamos el dibujo de varias figuras mediante el uso de múltiples puntos para que el robot de vaya a la posición punto por punto. 
Para esto para cada figura se Círculo Cuadrado o Iniciales, se crea un código que nos crea N puntos para cada figura definiendo parámetros como su centro y diámetro y el largo de sus lados. Esto lo podemos encontrar en los códigos Circulo.m Cuadrado.m Rectangulo.m  veremos el código de Rectangulo.m continuación.

```matlab
function Pos=Rectangulo(c,theta,r)
    m=4*r/(2*pi);
    if theta<=pi/4
        Pos=[c(1)+r/2,c(2)+m*theta];
    end
    if theta>=3*pi/4 && theta<=5*pi/4
        Pos=[c(1)-r/2,c(2)-m*(theta-pi)];
    end
    if theta>=7*pi/4
        Pos=[c(1)+r/2,c(2)+m*(theta-2*pi)];
    end
    if  theta>pi/4 && theta<3*pi/4
        Pos=[c(1)-m*(theta-pi/2),c(2)+r/2];
    end
    if  theta>5*pi/4 && theta<7*pi/4
        Pos=[c(1)+m*(theta-3*pi/2),c(2)-r/2];
    end
end
```
Para la implementación del HDMI se usó  GUIDE de MATLAB en este se incluyeron diferentes botones. Esto lo podemos ver en la siguiente figura:

![GUI](Images/Img11.jpg)
