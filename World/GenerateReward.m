function r = GenerateReward(n , p)
%a function that generates the reward vector, with rewards for every state.
%n is the number of states and so the dimension of the returned vector r.
%p is the index of the penalized state.
	r = zeros(n,1);

	%the last state is the one with positive reward
	r(n) = 1;
	r(p) = -1;

end;
