[A] = read_pat('iris.pat');
X=[];
t=[];
for i=1:size(A,1)
    X=[X; A{i}];
    t=[t ones(1,size(A{i},1))*i];
end

l=min(min(X));
h=max(max(X));
X=(X-l)/(h-l)

for k=1:10
    [Xlabel,tlabel]=gen_tr(X, t);
    file1=sprintf('G://64 bit prog//pro1//iris//Xlabel%d',k);
    file2=sprintf('G://64 bit prog//pro1//iris//tlabel%d',k);
    save(file1,'Xlabel');
    save(file2,'tlabel');
end

[Xtest, ttest]=gen_ts(X,t);
file1=sprintf('G://64 bit prog//pro1//iris//Xtest1');
file2=sprintf('G://64 bit prog//pro1//iris//ttest1');
save(file1,'Xtest');
save(file2,'ttest');

[Xval, tval]=gen_val(X,t);
file1=sprintf('G://64 bit prog//pro1//iris//Xval1');
file2=sprintf('G://64 bit prog//pro1//iris//tval1');
save(file1,'Xval');
save(file2,'tval');    
    

