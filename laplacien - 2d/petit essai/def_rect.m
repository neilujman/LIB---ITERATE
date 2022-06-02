function [P,E] = def_rect(x1,y1,x2,y2,nx,ny)
% definit la subdivision d'un rectangle de coin inférieur gauche (x1,y1)
% et de coin supérieur droit (x2,y2),
% selon nx subdivisions horizontales
% et ny verticales
    if (nargin()==0)
        x1 = 0;
        y1 = 0;
        x2 = 3;
        y2 = 1;

        nx = 12; % nombre de subdivision
        ny = 3;
    endif

    hx = (x2-x1)/nx;
    hy = (y2-y1)/ny;

    nbdy = 2*(nx+ny);

    P = zeros(nbdy,2);
    P(1:nx,:) = [x1+hx*(1:nx); y1*ones(1,nx)]';
    P(nx+1:nx+ny,:) = [x2*ones(1,ny); y1+hy*(1:ny)]';
    P(nx+ny+1:nx+ny+nx,:) = [x2+hx*(-1:-1:-nx); y2*ones(1,nx)]';
    P(nx+ny+nx+1:nx+ny+nx+ny,:) = [x1*ones(1,ny); y2+hy*(-1:-1:-ny)]';

    E = zeros(nbdy,2); % arêtes
    E(1:end-1,:) = [1:nbdy-1; 2:nbdy]';
    E(end,:) = [nbdy 1];
endfunction