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