clear all 
clc
metal_1=['Aluminum'];
metal_2=['Copper'];
metal_3=['Iron'];
metal_4=['Molybdenum'];
metal_5=['Cobalt'];
metal_6=['Vanadium'];
names={metal_1;metal_2;metal_3;metal_4;metal_5;metal_6}
symbols=char('AL ','Cu','Fe','Mo','Co','V')
atomic_num=int8([13 29 26 42 27 23]')
atomic_weight=[26.98 63.55 55.85 95.94 58.93 50.94]'
density=[2.71 8.94 7.87 10.22 8.9 6.0]
crys_struc=char('FCC','FCC','BCC','BCC','HCP','BCC')
my_structure.table={names;symbols; atomic_num; atomic_weight;density;crys_struc}
max(density)
table.column1 = names;
table.column2 = symbols;
table.column3 = atomic_num;
table.column4 = atomic_weight;
table.column5 = density;
table.column6 = crys_struc;
[value, index] = max(table.column5)
table.column1(index,:)

for n=1:6
if(density(n))>=density(1)
max=(density(n))
end
end
disp(names(n,:))
