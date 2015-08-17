function a = Alfa(t)
%alfa value update rule depending on time t
%alfa of t has the propriety so that the sum of all the 
%alfa of t, with t from 1 to infinite , is infinite; But
%the sum of all the alfa squared of t, with t from 1 
%to infinite, is (Pi^2)/6.
%this way we get a covergence of the Q values. 
	a = 1/t;

end;
