clear
clc

target = input('target (string) : ','s');
besar_populasi = input('besar populasi (integer) : ');
laju_mutasi = input('mutation rate (0-1) : ');

[solusi,generasi] = Genetika(target,besar_populasi,laju_mutasi)


