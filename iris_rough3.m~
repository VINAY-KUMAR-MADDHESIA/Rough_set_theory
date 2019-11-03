temp = num2cell(gamma_value_att);
%disp(temp);
[rows,~] = size(temp);
%disp(rows);
[maxv,idx] = max(cell2mat(gamma_value_att));
disp(maxv);
disp(idx);

all_att = {};
selected_att = {};
count = 1;
%Putting all the attribute in 'all_atr'
for i = 1:rows
    all_att{count} = count;
    count =count + 1;
end

selected_att{end + 1} = idx

%computing the significance of each of the remaining attrubute to select
%new attrubute
u_att = all_att{:,1};
s_att = selected_att{:,1};
att_1 = dec_table(:,u_att);
%disp(att_1);
att_2 = dec_table(:,s_att);
%disp(att_2);
[row,~]=size(dec_table);
new_att = [];
mat_new_att = []
for i =1:row
     new_att{i,1} = strcat(num2str(att_1(i)),'-',num2str(att_2(i)));    
end
new_dec_table = cat(2,new_att,num2cell(dec_table(:,5)));
disp(new_dec_table);



[IND_new_att] =  indisc_att(new_decision_table , 1);
disp(IND_new_att);
[tttt{i,1} ,tttt{i,2}] =  positive_region(dec_table , i , 5);
