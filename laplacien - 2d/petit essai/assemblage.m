function A = assemblage(p,tri)
    nt = size(tri,1);
    np = size(tri,1);
    A = zeros(np,np);
    for i=1:nt
        t = tri(i,:);
        s1 = p(t(1),:); x1 = s1(1); y1 = s1(2);
        s2 = p(t(2),:); x2 = s2(1); y2 = s2(2);
        s3 = p(t(3),:); x3 = s3(1); y3 = s3(2);
        a = a_loc(x1,y1,x2,y2,x3,y3);
        A(t,t) = A(t,t)+a;
    endfor
    A = sparse(A);
endfunction

