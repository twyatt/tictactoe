function [ output_args ] = boardColor( board )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

wins = findWins(board);
disp('Coloring board:');
disp(wins);

colors = [ ...
    [0, 0, 0]; ... % black
    [1, 0, 0]; ... % red
    [0, 0, 1]; ... % blue
];

for m = 1 : size(wins, 1)
    for n = 1 : size(wins, 2)
        state = wins(m, n) + 1; % offset since colors index starts at 1 instead of 0
        square = getHandleForSquareAt(m, n);
        
        color = colors(state, :);
        set(square, 'ForegroundColor', color);
    end
end

output_args = true;

end
