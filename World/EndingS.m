function sp = EndingS(s,a)
%This function defines the model of the grid world
%Given a state and the action performed
%returns the ending state.	
	

	%Getting the dimensions of the grid world
	w = width();
	h = height();
	
	%Update the action based on its stochasticity
	a = StochasticA(a);
	
	%sp is the ending state
	sp = s;
	
	%0 is the action "left", before performed, It 
	%checks that the state is not in the left border	
	if( a==0 && rem((s-1),w)!=0 )
	
		sp = sp - 1;

	%0 is the action "up", before performed, It 
	%checks that the state is not in the top border
	elseif( a==1 && ceil(s/w)!=h )

		sp = sp + w;
	
	%0 is the action "right", before performed, It 
	%checks that the state is not in the right border
	elseif( a==2 && rem(s,w)!=0 )

		sp = sp + 1;

	%0 is the action "down", before performed, It 
	%checks that the state is not in the down border
	elseif( a==3 && ceil(s/w)!=1 )
	
		sp = sp - w;

	end;
end;
