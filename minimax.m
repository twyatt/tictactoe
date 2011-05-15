function [ score, board ] = minimax( player, board, alpha, beta )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

winner = findWinner(board);
if (winner)
    if (winner == 1)
        score = 1;
    elseif (winner == 2);
        % player 2 will be seen as a score of -1
        score = -1;
    end
    return;
elseif (nnz(board) == prod(size(board))) % check for tie
    score = 0;
    return;
end

% determine other player
other = player + 1;
if (other > 2)
    other = 1;
end

children = boardChildren(other, board);

if (player == 1)
    
    for i = 1 : size(children, 3)
        child = children(:, :, i);
        [score, dummy] = minimax( other, child, alpha, beta );
        if (score > alpha)
            alpha = score;
        end
        if (alpha >= beta)
            board = child;
            score = alpha;
            return;
        end
    end
    
    %board = dummy;
    score = alpha;
    return;
    
elseif (player == 2)
    
    for i = 1 : size(children, 3)
        child = children(:, :, i);
        [score, dummy] = minimax( other, child, alpha, beta );
        if (score < beta)
            beta = score;
        end
        if (alpha >= beta)
            board = child;
            score = beta;
            return;
        end
    end
    
    %board = dummy;
    score = beta;
    return;
    
end

end

