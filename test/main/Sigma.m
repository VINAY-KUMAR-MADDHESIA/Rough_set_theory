function [sigma] = Sigma(Xlabel,tlabel)
   
[Class]=sigmaformat(Xlabel,tlabel);
write_pat('TR_Data.pat',Class);
system('sigma-finder.exe -d TR_Data.pat -s 15 > sigma_val.txt');
fid = fopen('sigma_val.txt','rt');
sigma=[];

while 1
    tline = fgetl(fid);
    if (strfind(tline, 'Suggested steps: '));
        sigma(1)=str2num(tline(19:size(tline,2)));
        for i=1:1:9
            tline = fgetl(fid);
            sigma(i+1)=str2num(tline);
        end
       % break;
    end
    if ~ischar(tline)
        break;
    end
end
fclose(fid);