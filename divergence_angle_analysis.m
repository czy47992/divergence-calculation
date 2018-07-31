fileID1 = fopen('ion_n_v_t_noB.txt');
fileID2 = fopen('ion_n_v_t_withB.txt');

ion_noB = textscan(fileID1,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f');
ion_withB = textscan(fileID2,'%f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f %f');

fclose(fileID1);
fclose(fileID2);

z1=0:0.1:10;
r1=zeros(1,size(z1,2));
for i=1:size(z1,2)
    r1(i)=my_cone(z1(i),0.9,ion_withB);
end
figure;
hold on;
plot(z1,r1,'LineWidth',1);

z=0:0.1:10;
r=zeros(1,size(z,2));
for i=1:size(z,2)
    r(i)=my_cone(z(i),0.7,ion_withB);
end
plot(z,r,'LineWidth',1);

z=0:0.1:10;
r=zeros(1,size(z,2));
for i=1:size(z,2)
    r(i)=my_cone(z(i),0.5,ion_withB);
end
plot(z,r,'LineWidth',1);

legend('90% density','70% density','50% density');
hold off;

z0=0:0.1:7.5;
r0=zeros(1,size(z0,2));
for i=1:size(z0,2)
    r0(i)=my_cone(z0(i),0.9,ion_noB);
end
figure;
hold on;
plot(z0,r0,'LineWidth',1);

z=0:0.1:10;
r=zeros(1,size(z,2));
for i=1:size(z,2)
    r(i)=my_cone(z(i),0.7,ion_noB);
end
plot(z,r,'LineWidth',1);

z=0:0.1:10;
r=zeros(1,size(z,2));
for i=1:size(z,2)
    r(i)=my_cone(z(i),0.5,ion_noB);
end
plot(z,r,'LineWidth',1);

legend('90% density','70% density','50% density');
hold off;

