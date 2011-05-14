function [ board ] = play( board, player, m, n )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

% prevent players from overriding previous plays
if (board(m, n))
    return;
end

board(m, n) = player;
renderBoard(board);

end

