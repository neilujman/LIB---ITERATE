function [p,tri] = mesh_rect(x1,y1,x2,y2,x3,y3,nx,ny)
    [P,E] = def_rect(x1,y1,x2,y2,nx,ny);
    Pintx = x1 + (x2-x1)*rand(nx*ny,1);
    Pinty = y1 + (y2-y1)*rand(nx*ny,1);
    Pint = [Pintx';Pinty']';

    p = [P; Pint];

    tri = delaunay(p(:,1),p(:,2));

endfunction


