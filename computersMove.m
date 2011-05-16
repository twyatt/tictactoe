if (type == TYPE.EASY)
    
    computerRandomMove;
    
elseif (type == TYPE.MODERATE)
    
    % look for potential wins
    foundWin = false;
    children = boardChildren(whosTurn, board);
    for i = 1 : size(children, 3)
        child = children(:, :, i);
        
        if (findWinner(child) == whosTurn)
            board = child;
            foundWin = true;
            break;
        end
    end
    
    if (~foundWin)
        foundBlock = false;
        
        other = whosTurn + 1;
        if (other > 2)
            other = 1;
        end
        
        % block any potential opponent wins
        children = boardChildren(other, board);
        for i = 1 : size(children, 3)
            child = children(:, :, i);

            if (findWinner(child) == other)
                block = board - child;
                [m, n] = find(block ~= 0);
                row = m(1);
                col = n(1);
                foundBlock = true;
                break;
            end
        end
        
        if (foundBlock)
            board(row, col) = whosTurn;
        else
            computerRandomMove;
        end
    end
    
    clear foundWin children i child foundBlock other block m n row col; % clean up
    
elseif (type == TYPE.EXPERT)
    
    [score, board] = minimax(whosTurn, board, -inf, inf);
    clear score; % clean up
    
end

switchTurn;
