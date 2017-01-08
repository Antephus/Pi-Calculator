%% Carrie Morris
-module (pi).
-export ([calculatePi/0]).

calculatePi()
->
	calculatePi(1, 3, -1, false).
	
%% T/F is whether or not 5dp accuracy has been reached
calculatePi(PreviousResult, _Denominator, _Sign, true)
->
	4 * PreviousResult;
calculatePi(PreviousResult, Denominator, Sign, false)
->
	calculatePi((PreviousResult + ((1/Denominator) * Sign)), (Denominator + 2), (Sign * -1), ((1/Denominator) < 0.0000025)).