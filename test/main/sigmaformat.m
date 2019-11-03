
function [Class]=sigmaformat(Xlabel,tlabel)

Class=cell(max(tlabel),1);

for lb=1:1:max(tlabel)
    k=1;
    Xtrn=zeros(1,size(Xlabel,2));
    for i=1:1:size(Xlabel,1)
        if(tlabel(i)==lb)
            Xtrn(k,:)=Xlabel(i,:);
            k=k+1;
        end     
    end            
    Class{lb}=Xtrn;
end