[A] = read_pat('iris.pat');
X=[];
t=[];
for i=1:size(A,1)
    X=[X; A{i}];
    t=[t ones(1,size(A{i},1))*i];
end

l=min(min(X));
h=max(max(X));
X=(X-l)/(h-l);

for k=1:10
    [Xlabel,tlabel]=gen_training(X, t);
    %file1=sprintf('/home//vinay//Desktop//Rough_set_matlab//iris//Xlabel%d',k);
    %file2=sprintf('/home//vinay//Desktop//Rough_set_matlab//iris//tlabel%d',k);
    file1=sprintf('C://Users//greet//OneDrive//Machine_Learning//Project 2k19 ML//PHASE 4//Work_Copy//vinay_work_copy//Rough_set_theory//iris//Xlabel%d',k);
    file2=sprintf('C://Users//greet//OneDrive//Machine_Learning//Project 2k19 ML//PHASE 4//Work_Copy//vinay_work_copy//Rough_set_theory//iris//tlabel%d',k);
    save(file1,'Xlabel');
    save(file2,'tlabel');
end

[Xtest, ttest]=gen_testing(X,t);
file1=sprintf('C://Users//greet//OneDrive//Machine_Learning//Project 2k19 ML//PHASE 4//Work_Copy//vinay_work_copy//Rough_set_theory//iris//Xtest1');
file2=sprintf('C://Users//greet//OneDrive//Machine_Learning//Project 2k19 ML//PHASE 4//Work_Copy//vinay_work_copy//Rough_set_theory//iris//ttest1');
save(file1,'Xtest');
save(file2,'ttest');

[Xval, tval]=gen_val(X,t);
file1=sprintf('C://Users//greet//OneDrive//Machine_Learning//Project 2k19 ML//PHASE 4//Work_Copy//vinay_work_copy//Rough_set_theory//iris//Xval1');
file2=sprintf('C://Users//greet//OneDrive//Machine_Learning//Project 2k19 ML//PHASE 4//Work_Copy//vinay_work_copy//Rough_set_theory//iris//tval1');
save(file1,'Xval');
save(file2,'tval');    
