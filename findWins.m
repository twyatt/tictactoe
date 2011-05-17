function [ wins ] = findWins( board )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

wins = zeros(3);

for player = 1 : 2
    % find wins on rows
    for m = 1 : size(board, 1)
        row = board(m, :);
        if (same(row) && row(1) == player) % found win
            wins(m, :) = player;
        end
    end

    % find wins on columns
    for n = 1 : size(board, 2)
        column = board(:, n);
        if (same(column) && column(1) == player) % found win
            wins(:, n) = player;
        end
    end

    % find wins on upper left to lower right diagonal
    diagonal = diag(board);
    if (same(diagonal) && diagonal(1) == player) % found win
        wins(1, 1) = player;
        wins(2, 2) = player;
        wins(3, 3) = player;
    end
    
    % find wins on upper right to lower left diagonal
    diagonal = diag(rot90(board));
    if (same(diagonal) && diagonal(1) == player) % found win
        wins(1, 3) = player;
        wins(2, 2) = player;
        wins(3, 1) = player;
    end
end

end
