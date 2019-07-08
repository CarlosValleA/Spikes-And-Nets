% clear
% close all
% load 180517BgVC3AS.mat
% 
% P = AS(:,1);
% f = AS(:,2);
% 
% armonica = conv(P,ones(1,5)/5,'same');
% 
% 
% plot(f,armonica)
% findmax1(f,armonica)


function Frecs = findmax(f,P)



[pks,locs,w] = findpeaks(P,'MinPeakWidth',0.5,'MinPeakDistance',0.4);


[pks , I] =  sort(pks,'descend');
locs = locs(I);

f = f(locs);


fr = f>=0.5;

pks(fr==0) = [];
f(fr==0) = [];



Frecs = [pks,f];

