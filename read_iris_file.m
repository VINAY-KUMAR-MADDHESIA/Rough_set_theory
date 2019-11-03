function [A]=read_iris_file(filename)
fid=fopen(filename,'r');
FeaturesNumber=4;
ClassesNumber=3;
PatternsNumber=150;
A=cell(ClassesNumber,1);

for i=1:PatternsNumber
    pattern=zeros(1,FeaturesNumber);
    for j=1:FeaturesNumber
        pattern(j)=fscanf(fid,'%f',1)
        tline=fgets(fid,1);
    end
    tline=fgetl(fid)
    
    if(strcmp(tline,'Iris-setosa'))
        class=1;
    end
    if (strcmp(tline,'Iris-versicolor'))
        class=2;
    end
    if (strcmp(tline,'Iris-virginica'))
        class=3;
    end
    A{class}=[A{class}; pattern];
end
end