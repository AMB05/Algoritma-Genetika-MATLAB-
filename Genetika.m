function [solusi,generasi] = Genetika(target,besar_populasi,laju_mutasi)
    populasi = create_population(target,besar_populasi);
    isLooping = true;
    generasi = 0;
    while isLooping
        %individu terbaik
        [parent1,parent2] = selection(populasi);
        %crossover
        [child1,child2] = crossover(parent1,parent2);
        %mutasi
        mutant1 = mutation(child1,laju_mutasi);
        mutant2 = mutation(child2,laju_mutasi);
        %hitung fitness mutant
        mutant1.fitness = hitung_fitness(mutant1.gen,target);
        mutant2.fitness = hitung_fitness(mutant2.gen,target);
        %calon anggota
        children = [mutant1, mutant2];
        populasi = regeneration(children, populasi);
        generasi = generasi + 1;
        %terminasi
        [isLooping,solusi] = termination(populasi);
        logging(populasi,target,solusi,generasi);
    end
end
