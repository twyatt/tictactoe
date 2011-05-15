function [ score ] = boardScore( board, whosTurn )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

score = 0;

% total scores from rows
for m = 1 : size(board, 1)
    row = board(m, :);
    score = score + lineScore(row, whosTurn);
end

% total scores from columns
for n = 1 : size(board, 2)
    column = board(:, n);
    score = score + lineScore(column', whosTurn);
end

% total scores from diagonals
score = score + lineScore(diag(board)', whosTurn);
score = score + lineScore(diag(rot90(board))', whosTurn);

end

