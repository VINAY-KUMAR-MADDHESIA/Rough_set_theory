addpath('/home/vinay/Desktop/Rough_set_matlab/test/main');
addpath('/home/vinay/Desktop/Rough_set_matlab/libsvm');

file1=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/Xtest1');
file2=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/ttest1');
load (file1);
load (file2);
 
load modelcross;      % Use validation set to define SVM parameters  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Xlabel=[];%initial training set
tlabel=[];%label information of initial training set

file1=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/Xlabel1');
file2=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/tlabel1');

load (file1);
load (file2);
addpath('/home/vinay/Desktop/Rough_set_matlab/test/main');
addpath('/home/vinay/Desktop/Rough_set_matlab/libsvm');

file1=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/Xtest1');
file2=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/ttest1');
load (file1);
load (file2);
 
load modelcross;      % Use validation set to define SVM parameters  

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Xlabel=[];%initial training set
tlabel=[];%label information of initial training set

file1=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/Xlabel1');
file2=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/tlabel1');

load (file1);
load (file2);

   
    
parameters = ['-t 2 -c ', num2str(modelcross(1,1)), ' -g ',num2str(modelcross(1,2))];  
success=zeros(1,max(tlabel));
accy=[]; 
kaccy=[];

for i=1:1:10
	Xlabel=[];
	tlabel=[];
	file1=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/Xlabel%d',i);
	file2=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/tlabel%d',i);
	load (file1);
	load (file2);
	[success_rate, accr, kappa]=one_v_all(Xlabel, tlabel, Xtest, ttest, parameters);
	accy(i,1)=accr;
	kaccy(i,1)=kappa;
	success=success+success_rate;
end
file1=sprintf('accuracy'); 
save(file1,'accy');    
file1=sprintf('kaccuracy');
save(file1,'kaccy');
success=success/10;
file1=sprintf('success'); 
save(file1,'success'); 
standard_dev=std(accy);
file1=sprintf('standard_dev'); 
save(file1,'standard_dev'); 
   
    
parameters = ['-t 2 -c ', num2str(modelcross(1,1)), ' -g ',num2str(modelcross(1,2))];  
success=zeros(1,max(tlabel));
accy=[]; 
kaccy=[];

for i=1:1:10
	Xlabel=[];
	tlabel=[];
	file1=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/Xlabel%d',i);
	file2=sprintf('/home/vinay/Desktop/Rough_set_matlab/iris/tlabel%d',i);
	load (file1);
	load (file2);
	[success_rate, accr, kappa]=one_v_all(Xlabel, tlabel, Xtest, ttest, parameters);
	accy(i,1)=accr;
	kaccy(i,1)=kappa;
	success=success+success_rate;
end
file1=sprintf('accuracy'); 
save(file1,'accy');    
file1=sprintf('kaccuracy');
save(file1,'kaccy');
success=success/10;
file1=sprintf('success'); 
save(file1,'success'); 
standard_dev=std(accy);
file1=sprintf('standard_dev'); 
save(file1,'standard_dev'); 




