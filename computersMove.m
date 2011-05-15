if (type == TYPE.EASY)
    
    [m, n] = find(board == 0);
    available = [m, n];
    
    index = ceil(rand() * size(available, 1));
    row = available(index, 1);
    col = available(index, 2);
    
    fprintf('Computer playing at [%i, %i].\n', row, col);
    board = play( board, whosTurn, row, col );
    
    clear m n index row col; % clean up
    
elseif (type == TYPE.MODERATE)
    
    % perform block or random move
    
elseif (type == TYPE.HARD)
    
    [score, board] = minimax(whosTurn, board);
    clear score; % clean up
    
end

switchTurn;
