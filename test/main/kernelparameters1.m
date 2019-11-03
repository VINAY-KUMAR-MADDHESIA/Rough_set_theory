function [C,gamma]=kernelparameters1(Xlabel,tlabel)
[sigma]=Sigma(Xlabel,tlabel);
sigma=1./sigma;
k=1;
cv1=[];
bb=randperm(size(Xlabel,1));
kfold=5; 
t=floor(size(Xlabel,1)/kfold);
for i=1:1:kfold
    Xlab=[];
    tlab=[];
    Xval=[];
    tval=[];
    m=1;
    n=1;
    valid=1;
    for j=1:1:size(Xlabel,1)
        if (j > (i-1)*t && j <= i*t)
            Xval(m,:)=Xlabel(bb(j),:);
            tval(m)=tlabel(bb(j));
            m=m+1;
        else
            Xlab(n,:)=Xlabel(bb(j),:);
            tlab(n)=tlabel(bb(j));
            n=n+1;
        end
    end
    for j=1:max(tlabel)
        if(size(find(tlab==j),2)==0)
            valid=0;            
        end
    end
    if valid==1
        for c = 1:50:1000   %other data set 1000
            for g = 1:1:10
                cv=[];
                cmd = ['-t 2 -c ', num2str(c), ' -g ', num2str(sigma(g))];
                [cv]=one_v_all_samecross(Xlab,tlab,Xlabel,tlabel,cmd);
                cv1(k,1)=mean(cv);
                cv1(k,2)=c;
                cv1(k,3)=sigma(g);
                k=k+1;
            end
        end
    end
end

cv1=sortrows(cv1,1);
C=cv1(size(cv1,1),2);
gamma=cv1(size(cv1,1),3);



