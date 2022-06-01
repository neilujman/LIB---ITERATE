x1 = 0; y1 = 0; % coin inférieur gauche du rectangle
x2 = 3; y2 = 1; % coin supérieur droit du rectangle
nx = 12, ny = 3;

[p,tri] = mesh_rec(x1,y1,x2,y2,x3,y3,nx,ny);
tri = delaunay(p(:,1),p(:,2));
triplot(tri,p(:,1),p(:,2));

A = assemblage(p,tri);
spy(y)

disp("Conditionnement\n")


