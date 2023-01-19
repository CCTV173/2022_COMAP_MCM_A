function [p,s]=pscalculation_pic(v,c1,c2,c3,dt)
    n=size(v);
    p=zeros(1,n(2));
    s=zeros(1,n(2));
    s(1)=v(1)*dt;
    for i=1:n(2)-1
        p(i)=(c1*(v(i)^2)+c2+c3*(v(i+1)-v(i))/dt)*v(i);
        s(i+1)=s(i)+v(i)*dt;
    end
    p(n(2))=p(n(2)-1);
    p(find(p<=0))=0;
end