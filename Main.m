addpath('Values/');
addpath('World/');
addpath('Functions');

%getting dimensions of the grid
w = width();
h = height();		

%initializing n, the number of states
n = w*h;

%starting state
s = 1;

%initializing actoin, to avoid problems with the logic operation in the first loop
a = 0;

%starting time value
t = 1;

%getting gamma value
gamma = Gamma();

%index of penalized state
p = n-w;


%generating the Reward vector R and the Q matrix, as a matrix of zeros
R = GenerateReward(n,p);
Q = zeros( (height()*width()) , NActions );

clc;

Visualize(s , w , h , R);

while(a != -1)
	

	a  = input("Insert the action to be executed (-1 to exit , L=0 U=1 R=2 D=3) \n\n" );
	
	clc;

	if(a != -1)
		
		%recalculating alfa depending on the time t;
		%alfa of t has the propriety so that the sum of all the 
		%alfa of t, with t from 1 to infinite , is infinite; But
		%the sum of all the alfa squared of t, with t from 1 
		%to infinite, is (Pi^2)/6.
		%this way we get a covergence of the Q values.   		
		alfa = Alfa(t);
		
		%sp is the ending state.
		%It depends on the model T, defined by the function "EndingS(s,a)"
		sp = EndingS(s,a);
		
		%getting the reward of the ending state
		r = R(sp);

		%Updating Q values using the update rule of Q-learning
		Q(s,(a+1)) = Q(s,(a+1)) * (1-alfa) + alfa * (r + gamma * max(Q(sp,:)) );

		%updating the time t  
		t = t + 1;
	end;

	%visualizing data
	s , a , r , sp , Q
	
	%updating the new starting state, for the next loop
	if(sp != n)
		s = sp;
	else
		s = 1;	 
	end;

	Visualize(s , w , h , R);
end;
