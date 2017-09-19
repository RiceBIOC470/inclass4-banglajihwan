%AW. Everything here works. 1/1. but see my comment below. 

%Inclass assignment 4. Due at the start of class on 9/12/17

%1. (a) Write code that makes a file with the words "Random numbers 1" on its
%own line, then 10 lines with 13 random numbers each, then "Random numbers
%2" on its own line, then 9 lines with 7 random numbers each. (b) Write code
%that reads only the first line of random numbers in the file and stores
%them as numbers in an array. 

%AW: this works but is very convoluted. Why write the values to a file, and then read them in and then write them to another file?
% you should just directly write them to the file without creating other files. 

rand_mat = rand(10,13);
filename = 'rand_mat.txt';
dlmwrite(filename, rand_mat, ' ') 
filename1 = 'rn1.txt'
fid=fopen(filename1,'w');
fid1=fopen(filename,'r');
print1 = 'Random numbers 1\n';
fprintf(fid, print1);
for line = 1:size(rand_mat,1)
fprintf(fid, '%s\n',(fgetl(fid1)));
end 
rand_mat2 = rand(9,7);
filename2 = 'rand_mat2.txt';
dlmwrite(filename2, rand_mat2, ' ');
fid2=fopen(filename2, 'r');
print2 = 'Random numbers 2\n';
fprintf(fid, print2);
for line = 1:size(rand_mat2,1)
fprintf(fid, '%s\n',(fgetl(fid2)));
end 
fclose('all')
fid3 = fopen(filename1, 'r'); 
for line = 1:2;
    line2=fgetl(fid3); 
end 
line2 
array1=str2num(line2)

% 2. Write a function that takes an array as input and returns a logical
% variable which is true if the sum of the numbers in the array is greater
% than or equal to 10 and false if it is less than 10. 

function result = greaterthan10 (array)
array_sum=sum(array);
if array_sum>=10
    a = true 
else a = false
end 
