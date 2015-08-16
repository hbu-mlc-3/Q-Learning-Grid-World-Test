function sp = EndingS(s,a)	
	
	w = width();
	h = height();

	a = StochasticA(a);

	sp = s;
	
	if( a==0 && rem((s-1),w)!=0 )
	
		sp = sp - 1;

	elseif( a==1 && ceil(s/w)!=h )

		sp = sp + w;

	elseif( a==2 && rem(s,w)!=0 )

		sp = sp + 1;

	elseif( a==3 && ceil(s/w)!=1 )
	
		sp = sp - w;

	end;
end;
