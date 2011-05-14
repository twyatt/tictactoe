function [ winner ] = checkForWin( board )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

winner = 0;

% check rows for wins
for m = 1 : size(board, 1)
    row = board(m, :);
    player = same(row);
    if (player)
        winner = player;
    end
end

% check columns for wins
for n = 1 : size(board, 2)
    column = board(:, n);
    player = same(column');
    if (player)
        winner = player;
    end
end

% check diagonals for wins
player = same(diag(board));
if (player)
    winner = player;
end
player = same(diag(rot90(board)));
if (player)
    winner = player;
end

end
