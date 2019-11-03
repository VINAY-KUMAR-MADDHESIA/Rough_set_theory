function [accr]=one_v_all_samecross(Xlabel,tlabel,Xval,tval,parameters)

for lb=1:(max(tlabel))
    Xtrn=[];
    ttrn=[];
    [Xtrn,ttrn]=binarization(lb,Xlabel,tlabel); 
    model = svmtrain(ttrn',Xtrn, parameters);
    [predict_label, accuracy, dec_values] = svmpredict(tval', Xval, model);
    prediction(:,lb)=dec_values;
end

v=1:1:max(tlabel);
for i=1:size(prediction,1)
    predict=[];
    predict=[prediction(i,:)' v'];
    predict=sortrows(predict,1);
    realpredict(i)=predict(max(tlabel),2);
end
accr=(size(find(tval==realpredict),2)*100)/size(Xval,1);