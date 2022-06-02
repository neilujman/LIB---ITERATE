function [b] = second_membre(p,t,f)
% f est un vecteur définissant la contrainte externe sur le domaine,
% il donne la valeur de cette contrainte sur les points intérieurs du maillage
    np = size(p,1);
    nt = size(t,1);
    b=zeros(np,1);

    for i=1:nt
        K = t(i,:);
        s1 = p(K(1)); s2 = p(K(2)); s3 = p(K(3));
        mesK = 0.5*det([s1 1; s2 1; s3 1]);
        b(K(1)) = 1/3*mesK*(f(K(1))+f(K(2))+f(K(3)));
        b(K(2)) = 1/3*mesK*(f(K(1))+f(K(2))+f(K(3)));
        b(K(3)) = 1/3*mesK*(f(K(1))+f(K(2))+f(K(3)));
    endfor


endfunction
