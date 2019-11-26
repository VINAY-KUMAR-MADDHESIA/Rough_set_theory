temp = num2cell(gamma_value_att);
[rows,~] = size(temp);
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

selected_att{end + 1} = idx;
all_att(idx)=[];

for x=1:2
    [~,size_u_att]=size(all_att);
    [~,size_s_att]=size(selected_att);
    F_arr=[];
    for i=1:size_u_att
        u_att=all_att{:,i};
        z_arr=[];
        for j=1:size_s_att
            s_att=selected_att{:,j};
            z_temp=significance(dec_table,gamma_value_att,s_att,u_att);
            z_arr=[z_arr,z_temp];
        end
        
        min_z=min(z_arr);
        max_z=max(z_arr);
        
        
        F = gamma_value_att{u_att} + (min_z * min_z)/max_z;
        F_arr=[F_arr;F,i];
    end
    
    F_sub_arr=F_arr(:,1);
    [max_F,idx_F] = max(F_sub_arr);
    selected_idx=F_arr(idx_F,2);
    selected_idx_att = all_att{selected_idx};
    selected_att=[selected_att,selected_idx_att];
    all_att(selected_idx)=[];
end

