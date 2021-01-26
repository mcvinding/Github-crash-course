function isItFriday()
% Function to provide the solution to one of the greatest questions of our 
% times.

format shortg
D = clock;
W = weekday([num2str(D(1)),'-',num2str(D(2)),'-',num2str(D(3))]);

if W == 6
   disp('Yes!')
else
   disp('No!')
end

end