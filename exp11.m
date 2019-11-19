clc;
clear all;
close all;
Q = 0.375;
Str = num2str(Q);  %Converting number to a string
decimal_pt = find(Str == '.'); %Finding the index of decimal point.
Int = Str(1:decimal_pt - 1);
Int_num = str2num(Int);
Int_num_bin = dec2bin(Int_num);
Frac = Str(decimal_pt + 1:length(Str));
Frac_num = str2num(Frac)/10^(length(Frac));
for i = 1:length(Frac)
    if(Frac_num >= 2^(-i))
        Frac_num_bin(i) = '1';
        Frac_num = Frac_num - 2^(-i);
    else
        Frac_num_bin(i) = '0';
    end 
end 
Str_quant_trunc = strcat('0',Frac_num_bin(1:2))
if(Frac_num_bin(3) == '1')
    Frac_num_bin(2) = '0';
    Frac_num_bin(1) = '1';
end
Str_quant_round = strcat('0',Frac_num_bin(1:2))

 


