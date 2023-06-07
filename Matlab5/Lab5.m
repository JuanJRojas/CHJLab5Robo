clear
q1=0; q2=0; q3=0;q4=0;q5=0;d1=138;d2=107;d3=108;d4=95;
Theta=[q1; q2; q3;q4;q5];
d=[d1; 0; 0;0;0];
a=[0; d2;d3;d4;0];
Alpha=[pi/2; 0; 0;-pi/2;0];
Offset=[0; pi/2; 0;0;0];
% L1 = Link('revolute', 'd', d(1), 'a', a(1), 'alpha', Alpha(1), 'offset', Offset(1), 'qlim', [-pi pi]);
% L2 = Link('revolute', 'd', d(2), 'a', a(2), 'alpha', Alpha(2), 'offset', Offset(2), 'qlim', [-pi pi]);
% L3 = Link('revolute', 'd', d(3), 'a', a(3), 'alpha', Alpha(3), 'offset', Offset(3), 'qlim', [-pi pi]);
% L4 = Link('revolute', 'd', d(4), 'a', a(4), 'alpha', Alpha(4), 'offset', Offset(4), 'qlim', [-pi pi]);
% L5 = Link('revolute', 'd', d(5), 'a', a(5), 'alpha', Alpha(5), 'offset', Offset(5), 'qlim', [-pi pi]);
% Links = [L1; L2; L3;L4;L5];
% ws = [-300 300 -300 300 -30 500];
% Robot1 = SerialLink(Links);
% T05=fkine(Robot1,[0 0 0 0 0]);
% Robot1.plot([0 0 0 0 0],'workspace', ws);
% view([0 90])
% % Herramienta
% T_tool = transl(0, 0, 0);
% Robot1.tool = T_tool;
%%
%Rectangulo
N=18;
q=zeros(N,5);
theta=linspace(0,2*pi,N);
Pos=zeros(N,3);
for i=1:N
    Pos(i,1:2)=Rectangulo([150,150],theta(i),25);
    Pos(i,3)=60;
end
for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end
% Robot1.plot(q,'workspace',ws)
%%
%Letras

N=18;
q=zeros(N,5);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=linea([100,100],[100,118],i,N);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end

% Robot1.plot(q,'workspace',ws)
q=iKine([Pos(N,1),Pos(N,2),Pos(N,3)+20],[d1,d2,d3,d4],true);
q(2)=q(2)-pi/2;
% Robot1.plot(q,'workspace',ws)
N=18;
q=zeros(N,5);
theta=linspace(0,2*pi,N);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=Circulo([100,115],theta(i),7.5);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end

% Robot1.plot(q,'workspace',ws)
q=iKine([Pos(N,1),Pos(N,2),Pos(N,3)+20],[d1,d2,d3,d4],true);
q(2)=q(2)-pi/2;
% Robot1.plot(q,'workspace',ws)
N=18;
q=zeros(N,5);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=linea([114,114],[118,100],i,N);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end

% Robot1.plot(q,'workspace',ws)

q=iKine([Pos(N,1),Pos(N,2),Pos(N,3)+20],[d1,d2,d3,d4],true);
q(2)=q(2)-pi/2;
% Robot1.plot(q,'workspace',ws)

N=18;
q=zeros(N,5);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=linea([115,110],[126,100],i,N);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end
% Robot1.plot(q,'workspace',ws)
N=18;
q=zeros(N,5);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=linea([126,100],[137,110],i,N);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end
% Robot1.plot(q,'workspace',ws)
q=iKine([Pos(N,1),Pos(N,2),Pos(N,3)+20],[d1,d2,d3,d4],true);
q(2)=q(2)-pi/2;
% Robot1.plot(q,'workspace',ws)

N=18;
q=zeros(N,5);
theta=linspace(pi/3,2*pi-pi/3,N);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=Circulo([150,105],theta(i),2.5);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end

% Robot1.plot(q,'workspace',ws)
%%
%Workspace
N=18;
q=zeros(N,5);
theta=linspace(-pi/2,pi/2,N);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=Circulo([0,0],theta(i),200);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end
% Robot1.plot(q,'workspace',ws)
%%
N=18;
q=zeros(N,5);
theta=linspace(-pi/2,pi/2,N);
Pos=zeros(N,3);

for i=1:N
    Pos(i,1:2)=Circulo([0,0],theta(i),270);
    Pos(i,3)=60;
end

for i=1:N
    q(i,:)=iKine(Pos(i,:),[d1,d2,d3,d4],true);
    q(i,2)=q(i,2)-pi/2;
end
% Robot1.plot(q,'workspace',ws)