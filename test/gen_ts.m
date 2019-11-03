function [Xtest,ttest]=gen_ts(X,t)
    Xtest=[];
    ttest=[];
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
              
        for j=1:round(((size(Xtemp,1)*70)/100))  
            Xlabeltemp(k,:)=Xtemp(bb(j),:);
            tlabeltemp(k)=i;
            k=k+1;
        end
        Xtest=[Xtest; Xlabeltemp];
        ttest=[ttest tlabeltemp];
    end
end