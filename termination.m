function [isLooping,solusi] = termination(populasi)
    [Terbaik,~] = selection(populasi);
    if Terbaik.fitness == 100
        isLooping = false;
        disp('Jawaban Ketemu!!!');
    else
        isLooping = true;
    end
    solusi= Terbaik;
end