addpath('Values/');
addpath('World/');
addpath('Functions');

w = width();
h = height();

n = w*h;

s = 1;
a = 0;
t = 1;
gamma = Gamma();

p = n-w;

R = GenerateReward(n,p);
Q = zeros( (height()*width()) , NActions );

clc;

Visualize(s , w , h , R);

while(a != -1)
	

	a  = input("Insert the action to be executed (-1 to exit , L=0 U=1 R=2 D=3) \n\n" );
	
	clc;

	if(a != -1)
		
		alfa = Alfa(t);

		sp = EndingS(s,a);
		
		r = R(sp);

		Q(s,(a+1)) = Q(s,(a+1)) * (1-alfa) + alfa * (r + gamma * max(Q(sp,:)) );  
		t = t + 1;
	end;

	s , a , r , sp , Q
	
	if(sp != n)
		s = sp;
	else
		s = 1;	 
	end;

	Visualize(s , w , h , R);
end;
