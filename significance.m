function [z]=significance(dec_table,gamma_value_att,bi,bj)

att_1 = dec_table(:,bi);
att_2= dec_table(:,bj);

[row,~]=size(dec_table);
new_att = {};
%mat_new_att = [];

for i =1:row
     new_att{i,1} = strcat(num2str(att_1(i)),'-',num2str(att_2(i)));    
end

new_dec_table = cat(2,new_att,num2cell(dec_table(:,5)));
new_att={};

[~,gamma_comb]=positive_region_2(new_dec_table , 1 , 2);

z = gamma_comb - gamma_value_att{bi};

