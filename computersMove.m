if (type == TYPE.EASY)
    
    [m, n] = find(board == 0);
    available = [m, n];
    
    index = ceil(rand() * size(available, 1));
    row = available(index, 1);
    col = available(index, 2);
    
elseif (type == TYPE.MODERATE)
    % perform block or random move
elseif (type == TYPE.HARD)
    % ultimate!
end

fprintf('Computer playing at [%i, %i].', row, col);
board = play( board, whosTurn, row, col );

switchTurn;
