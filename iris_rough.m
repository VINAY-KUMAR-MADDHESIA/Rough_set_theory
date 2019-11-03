% Illustration of a rough-set problem.

% The individual observations are provided below
trans_t = t'
dec_table = cat(2,X,trans_t);
disp ('The decision table is:');
disp (dec_table);



[IND_sepal_length] =  indisc_att(dec_table , 1);
% Here, 1 indicates the COLUMN number of the sepal_length attribute.
disp ('The partition created by sepal_length attribute is:')
disp(IND_sepal_length);


[IND_sepal_width] =  indisc_att(dec_table , 2);
% Here, 2 indicates the COLUMN number of the sepal_width attribute.
disp ('The partitions created by sepal_width attribute is:')
disp(IND_sepal_width);

[IND_petal_length] =  indisc_att(dec_table , 3);
% Here, 3 indicates the COLUMN number of the petal_length attribute.
disp ('The partitions created by petal_length attribute is:')
disp(IND_petal_length);

[IND_petal_width] =  indisc_att(dec_table , 4);
% Here, 4 indicates the COLUMN number of the petal_width attribute.
disp ('The partitions created by petal_width attribute is:')
disp(IND_petal_width);

[IND_species] =  indisc_att(dec_table , 5);
% Here, 1 indicates the COLUMN number of the species attribute.
disp ('The partitions created by species attribute is:')
disp(IND_species);


[POS_att , gamma_att] =  positive_region(dec_table , 1 , 5);
% Here, we calculate the POSITIVE region and gamma value of sepal_length attribute
% w.r.t. the decision attribute OUTCOME attribute.
disp ('The observations that fall under positive region are:');
disp (POS_att);

disp ('The dependence value of the queried attribute w.r.t. decision attribute is:');
disp (gamma_att);

[POS_att , gamma_att] =  positive_region(dec_table , 2 , 5);
% Here, we calculate the POSITIVE region and gamma value of sepal_width attribute
% w.r.t. the decision attribute OUTCOME attribute.
disp ('The observations that fall under positive region are:');
disp (POS_att);
disp ('The dependence value of the queried attribute w.r.t. decision attribute is:');
disp (gamma_att);

[POS_att , gamma_att] =  positive_region(dec_table , 3 , 5);
% Here, we calculate the POSITIVE region and gamma value of petal_length attribute
% w.r.t. the decision attribute OUTCOME attribute.
disp ('The observations that fall under positive region are:');
disp (POS_att);

disp ('The dependence value of the queried attribute w.r.t. decision attribute is:');
disp (gamma_att);

[POS_att , gamma_att] =  positive_region(dec_table , 4 , 5);
% Here, we calculate the POSITIVE region and gamma value of petal_width attribute
% w.r.t. the decision attribute OUTCOME attribute.
disp ('The observations that fall under positive region are:');
disp (POS_att);

disp ('The dependence value of the queried attribute w.r.t. decision attribute is:');
disp (gamma_att);

