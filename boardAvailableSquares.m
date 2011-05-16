function [ available ] = boardAvailableSquares( board )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

[m, n] = find(board == 0);
available = [m, n];

end
