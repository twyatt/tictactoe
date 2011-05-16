function [ children ] = boardChildren( player, board )
%BOARDCHILDREN Generates a set of boards of the specified players next move.
%   Player should be an integer, either 1 or 2 representing player 1 (X) or
%   player 2 (O) respectively. The boards are 3x3 (m x n) matrices, with 0
%   representing an unplayed square, 1 representing a square played by
%   player 1 (X) and 2 representing a square played by player 2 (O).
%   Children is a 3 dimenional matrix in the form of children(m, n, o) with
%   m and n being the row and column dimensions for each board and o being
%   the index per child board.
%
%   Example:
%       board =
%            1     2     1
%            1     1     2
%            2     0     0
%
%       boardChildren(2, board)
%       ans(:,:,1) =
%            1     2     1
%            1     1     2
%            2     2     0
%       ans(:,:,2) =
%            1     2     1
%            1     1     2
%            2     0     2
%

children = zeros(size(board, 1), size(board, 2), 0);

available = boardAvailableSquares(board);
for i = 1 : size(available, 1)
    temp = board;
    
    square = available(i, :);
    row = square(1);
    col = square(2);
    
    temp(row, col) = player;
    children = cat(3, children, temp);
end

end

