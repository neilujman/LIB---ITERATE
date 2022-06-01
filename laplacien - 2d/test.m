x1 = 0, y1 = 0;
x2 = 3, y2 = 1;
nx = 12, ny = 3;

[P,E] = def_rect(x1,y1,x2,y2,nx,ny);
Pintx = x1 + (x2-x1)*rand(nx*ny,1);
Pinty = y1 + (y2-y1)*rand(nx*ny,1);
Pint = [Pintx';Pinty']';

p = [P; Pint];

tri = delaunay(p(:,1),p(:,2));
triplot(tri,p(:,1),p(:,2));
