function [ board ] = play( board, player, m, n )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

board(m, n) = player;
renderBoard(board);

winner = checkForWin(board);
if (winner)
    disp('We have a winner!');
    disp(winner);
end

end

