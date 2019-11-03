function [A]=pre_processing(filename)
T = readtable(filename);
length = size(T,1);
FeaturesNumber=4;
ClassesNumber =3;
PatternsNumber =150;
A=cell(ClassesNumber,1)
fprintf('the number of rows in your dataset is :%d\n',length);
for i=1:PatternsNumber
    pattern=zeros(1,FeaturesNumber);
    for j=1:FeaturesNumber
        pattern(j)=fscanf(T,'%f',1)
        tline=fgets(T,1);
    end
    tline=fgetl(T)
    
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

