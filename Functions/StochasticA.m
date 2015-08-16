function sa = StochasticA(a)
	
	sa = a;
	
	if(rand(1) < 0.1)

		sa = sa + 1;
		sa = rem(sa,NActions());

	elseif(rand(1) > 0.9)

		sa = sa - 1;

		if(sa < 0);
		
			sa=sa+NActions();
		end;
	end;
end;
