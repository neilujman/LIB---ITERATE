function [vertices, triangles,labels] = PreInit(inbvx)
    NbOfSwapTriangle = 0;
    nbiv = 0;
    nbv = 0;
    nbvx = inbvx;
    nbt = 0;
    nbtx = 2*inbvx-2;

    if(inbvx>0)
        vertices = zeros(nbvx,2);
        triangles = zeros(nbtx,3);
        labels = zeros(nbvx,1);
    else
        vertices = 0;
        triangles = 0;
        nbtx = 0;
    endif



endfunction
