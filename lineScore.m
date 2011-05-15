function [ score ] = lineScore( line, whosTurn )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

players = zeros(1, 2);

for i = 1 : size(line, 2)
    square = line(i);
    
    if (square > 0)
        players(square) = players(square) + 1;
    end
end

score = 0;
advantage = 1;

if (players(2) == 0)
    if (whosTurn == 1)
        advantage = 3;
    end
    score = 10 ^ players(1) * advantage;
elseif (players(1) == 0)
    if (whosTurn == 2)
        advantage = 3;
    end
    score = -(10 ^ players(2) * advantage);
end

end

