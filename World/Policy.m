function a = Policy(s , Q)
%The function of the Policy
%It usesthe simulated annealing approach

	%Getting the espsilon value
	epsilon = Epsilon();
	
	%It has 1-epsioln probability to follow the policy
	%and epsilon probability to acto randomly
	%This way the Agent will explore and so learn
	%and at the same time It will use what It has
	%learned.
	%Using this method It doesn't matter too much
	%the q starting values.
	if(rand(1)>epsilon)
		[u,a] = max(Q(s,:));
		a = a-1; 
	else
		a = ceil( rand(1)*(2*3)-3 )
		
		if(a<0)
			a = a*-1;
		end;
	end;
end;
