%Shifting
a = 1:10000;
c = num2cell(a);
tic; for step = 1:10000; idx = randi(numel(a)); a = [a(1:idx-1), a(idx+1:end), a(idx)]; end; toc
tic; for step = 1:10000; idx = randi(numel(c)); c = [c(1:idx-1), c(idx+1:end), c(idx)]; end; toc
disp(c)