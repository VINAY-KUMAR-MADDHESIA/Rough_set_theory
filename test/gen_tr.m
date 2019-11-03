function [Xlabel,tlabel]=gen_tr(X,t)
    Xlabel=[];
    tlabel=[];
    for i=1:max(t)
        k=1;
        Xtemp=[];
        ttemp=[];
        for j=1:size(X,1)
            if(t(j)==i)
                Xtemp(k,:)=X(j,:);
                ttemp(k)=i;
                k=k+1;
            end     
        end     
        bb=randperm(size(Xtemp,1)); 
        k=1;
        Xlabeltemp=[];
        tlabeltemp=[];
              
        for j=1:round(((size(Xtemp,1)*30)/100))  
            Xlabeltemp(k,:)=Xtemp(bb(j),:);
            tlabeltemp(k)=i;
            k=k+1;
        end
        Xlabel=[Xlabel; Xlabeltemp];
        tlabel=[tlabel tlabeltemp];
    end
end