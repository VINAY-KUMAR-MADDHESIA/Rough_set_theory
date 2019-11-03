% Illustration of a rough-set problem.

% The individual observations are provided below
trans_t = t'
dec_table = cat(2,X,trans_t);
%disp ('The decision table is:');
%disp (dec_table);
[size_table,~]=size(dec_table);


[IND_sepal_length] =  indisc_att(dec_table , 1);
[IND_sepal_width] =  indisc_att(dec_table , 2);
[IND_petal_length] =  indisc_att(dec_table , 3);
[IND_petal_width] =  indisc_att(dec_table , 4);
[IND_species] =  indisc_att(dec_table , 5);
tttt = cell(4,2);

i=1;
j=1;

for i=1:4
   [tttt{i,1} ,tttt{i,2}] =  positive_region(dec_table , i , 5);
end

%slecting the attribute which have the maximum relevance value and puting
%them in selected set and for remaining we put them in unselected attribute
%gamma_value_att = cell(1,4);
gamma_value_att = [tttt(:,2)];

