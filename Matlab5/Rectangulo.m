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