clear
close all
clc
m =4;%the last digit of my student number
info = [5, m, m;8, 3, m; 6, m, m];%info matrix
qlty = [0, 2, 2; 1, 1, 2;0, 2, 2];%quality matrix
[sRow_info, sCol_info] = size(info); % defining the sizes of info as an array 
[sRow_qlty, sC_qlty] = size(qlty); %defining the sizes of quality as an array 
if ((sRow_info == sRow_qlty) && (sRow_info == sRow_qlty)) %checking if the sizes of two matrices are the same
    soltn= zeros(sRow_info, sCol_info); %hafizadan alan ayirarak elemanlari 0 olan soltn matrisi olusturuldu(sorry for turkish)
    for i = 1 : sRow_info * sCol_info % check for all the elements , and reduce the matrices into one dimension 
        if (~(qlty(i) == 2))%%if the value is not 2 in quality matrix, assign it to -1 in the new matrix "soltn" 
            soltn(i) = -1;
        else
            soltn(i) = info(i); %% if the corresponding value in quality matrix is 2, substitute them with m in the new matrix "soltn"
        end
    end
    fprintf("The resulting solution matrix is\n");
    disp(soltn);%printing out the soltn matrix
else
    disp('Please make sure your matrices have the same size!') %error debugging
end
