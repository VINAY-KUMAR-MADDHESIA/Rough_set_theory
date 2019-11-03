addpath('/home/vinay/Desktop/Rough_set_matlab/test/main');
addpath('/home/vinay/Desktop/Rough_set_matlab/libsvm');
modelcross=[];

file1=sprintf('/home/vinay/Desktop/Rough_set_matlab/test/iris/Xval1');
file2=sprintf('/home/vinay/Desktop/Rough_set_matlab/test/iris/tval1');

load (file1);
load (file2);
        
[C,gamma]=kernelparameters1(Xval, tval);
modelcross(1,1)=C;
modelcross(1,2)=gamma;   

save modelcross modelcross