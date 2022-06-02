function A = a_loc(x1,y1,x2,y2,x3,y3)
% calcule la matrice de rigidité locale,
% en vue de l'assemble de la matrice de rigidité globale
% (xi,yi) : coordonnée du sommet i (numérotation locale)
%
% A : matride de rigidité locale
%
% On considère l'élément fini P1
    P = [x1 y1 1; x2 y2 1; x3 y3 1]; % matrice des 3 sommets
    phi = inv(P); % la colonne i est la fonction de base phi_i (restreinte à T)
    gradphi = phi(1:2,:)'; % la ligne i est le gradient phi_i
    A = 1/2*det(P)*gradphi*gradphi';
endfunction
