function [vertices,labels] = RandomInit(vertices,labels)
    vertices = rand(size(vertices));
    labels = zeros(size(vertices,1),1);
endfunction


