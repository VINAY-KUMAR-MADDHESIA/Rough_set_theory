function [success_rate, accr, kappa] = one_v_all(Xlabel, tlabel, Xunlabel, tunlabel, parameters)
%this function calculate the classification accuracy of the proposed
%technique
prediction=zeros(size(Xunlabel,1),max(tlabel));
realpredict=[];
for lb=1:(max(tlabel))
    Xtrn=[];
    ttrn=[];
    [Xtrn,ttrn]=binarization(lb,Xlabel,tlabel); 
    model = svmtrain(ttrn, Xtrn, parameters);
    [predict_label, accuracy, dec_values] = svmpredict(tunlabel', Xunlabel, model);
    prediction(:,lb)=dec_values;
end
v=1:max(tlabel);
for i=1:size(prediction,1)
    predict=[];
    predict=[prediction(i,:)' v'];
    predict=sortrows(predict,1);
    realpredict(i)=predict(max(tlabel),2);
end
success_rate=zeros(1,max(tlabel));
for i=1:size(Xunlabel,1)
    if(realpredict(i)==tunlabel(i))
        success_rate(realpredict(i))=success_rate(realpredict(i))+1;
    end
end
for lb=1:max(tlabel)
    success_rate(lb)=success_rate(lb)*100/size(find(tunlabel==lb),2);
end
accr=(size(find(tunlabel==realpredict),2)*100)/size(Xunlabel,1);
confmat=zeros(max(tlabel),max(tlabel));
for i=1:1:size(Xunlabel,1)
    confmat(tunlabel(i),realpredict(i))=confmat(tunlabel(i),realpredict(i))+1;
end
r=sum(confmat,2);   %sum the rows of the confusion matrix
c=sum(confmat,1);   %sum the columns of the confusion matrix
a=sum(diag(confmat));
b=c*r;
n=sum(r);
a1=a/n;
b1=b/n^2;
kappa=(a1-b1)/(1-b1);
