function r = GenerateReward(n , p)
%a function that generates the reward vector, with rewards for every state.
%n is the number of states and so the dimension of the returned vector r.
%p is the index/vector of indexes of the penalized state/states.
	r = ones(n,1)*commonr();

	%the last state is the one with positive reward
	r(n) = 2;
	r(p) = -2;

end;
