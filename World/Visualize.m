function s = Visualize(s , w , h , r)
%Simple function to visualize the grid world were every state
%is represented by their reward and the Agent by the number 8 
	
	%Transposing the vector from vertical to horizontal
	r = r';
	r(s) = 8;
	
	st = w*(h-1) + 1;
	en = length(r);

	%displaying row by row, starting from the top one and going down
	for k = 1:h
		disp(r(st:en));
		st = st-w;
		en = en-w;
	end;
end;
