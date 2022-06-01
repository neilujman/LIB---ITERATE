function A = assemblage(tri,p)
    nt = size(tri,1);
    np = size(tri,1);
    A = zeros(np,np);
    for i=1:nt
        t = tri(i,:);
        [x1,y1] = p(t(1),:);
        [x2,y2] = p(t(2),:);
        [x3,y3] = p(t(3),:);
        a = a_loc(x1,y1,x2,y2,x3,y3);
        A(t,t) = A(t,t)+a;
    endfor
endfunction

