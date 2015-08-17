function sa = StochasticA(a)
%a function which recive an action as parameter and return an action.
%It reproduce the Stochasticity, the uncertainty , of the grid world:
%Performing an action you have .82 probability to successfully perform it
%and .18 probability to perform one of the two perpendicular actions.

	sa = a;
	
	if(rand(1) < 0.1)

		sa = sa + 1;

		%if the value of the action surpass the last one, 
		%It restart from the first numerical one.
		sa = rem(sa,NActions());

	elseif(rand(1) > 0.9)

		sa = sa - 1;
		
		%if the value of the action is negative , 
		%It restart from the last numerical one.
		if(sa < 0);
		
			sa=sa+NActions();
		end;
	end;
end;
