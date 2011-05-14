function [ gameState ] = play( gameState, player, m, n )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

gameState(m, n) = player;
syncBoardToGameState(gameState);

% TODO: check for win
%winner = checkForWinner(gameState);
%if (winner)
%end

end

