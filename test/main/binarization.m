function [Xtrn,ttrn]=binarization(lb,Xlabel,tlabel)

%Divide the whole training patterns into two classes. If the pattern
%belongs to lb class assign its label is +1 otherwise -1. This binarize
%patterns are store into Xtrn matrix and ttrn vector.

X1temp=[];
X2temp=[];
t1temp=[];
t2temp=[];

Xtrn=[];
ttrn=[];

%Binarization procedure
j=1;
k=1;
for i=1:1:size(Xlabel,1)
    if(tlabel(i)==lb)
        X1temp(j,:)=Xlabel(i,:);
        t1temp(j)=+1;
        j=j+1;
    else
        X2temp(k,:)=Xlabel(i,:);
        t2temp(k)=-1;
        k=k+1;
    end
end

Xtrn=[X1temp; X2temp];
ttrn=[t1temp t2temp];