if (~boardIsFull(board) && ~findWinner(board))
    [score, temp] = minimax(whosTurn, board, -inf, inf);
    hint = temp - board;
    [m, n] = find(hint ~= 0);
    handle = getHandleForSquareAt(m, n);
    
    if (whosTurn == 1)
        char = 'X';
    elseif (whosTurn == 2)
        char = 'O';
    end
    
    set(handle, 'String', char);
    set(handle, 'ForegroundColor', [0.6, 0.6, 0.6]);
    
    clear score hint m n handle char; % clean up
end
