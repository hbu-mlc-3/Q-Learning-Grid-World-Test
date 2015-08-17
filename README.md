A simple Markovian Grid world ruled by a Stochastic-like model.

AGENT:

	The agent always starts from the state 1 and always act following its
	Policy and updating the Q values.

WORLD:

	The dimension of the grid world can be easly changed in the files "height.m"
	and "width.m", which are functions that returns the width and the height of
	the grid, in the folder "Values".

	The states of the world gives all a zeoro reward, but changing the value in
	"commonr.m", in the folder "Values" It can be updated to check how does
	the agent behaves in different ways with different rewards.

	The final state and the state with index p have rispectively rewards
	equals to +2 and -2, and the last one is also the "END" of the game. 

POLICY:

	The policy of the agent is based on a Simulated Annealing Approach
	Choosing somethimes to perform a randoom action, this way It will 
	explore and the starting values of Q don't matters too much.

	The thefinition of a policy in terms of Q is:

		argmax(a) of Q

MODEL:
	
	The program itself is aware of the transition function (EndingS) , 
	but the agent only suffer their effect.
