function [ children ] = boardChildren( player, board )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

children = zeros(size(board, 1), size(board, 2), 0);

available = availableSquaresOnBoard(board);
for i = 1 : size(available, 1)
    temp = board;
    
    square = available(i, :);
    row = square(1);
    col = square(2);
    
    temp(row, col) = player;
    children = cat(3, children, temp);
end

end

