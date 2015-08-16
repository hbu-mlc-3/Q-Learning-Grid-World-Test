function s = Visualize(s , w , h , r)
	
	r = r';
	r(s) = 8;
	
	st = w*(h-1) + 1;
	en = length(r);

	for k = 1:h
		disp(r(st:en));
		st = st-w;
		en = en-w;
	end;
end;
