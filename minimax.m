function [ score, board ] = minimax( player, board, alpha, beta )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%fprintf('minimax(player: %i, alpha: %i, beta: %i):\n', player, alpha, beta);
%disp(board);

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

for i = 1 : size(children, 3)
    child = children(:, :, i);
    [score, dummy] = minimax( other, child, alpha, beta );
    
    if (player == 1)
        if (score > alpha)
            alpha = score;
            board = child;
            
            if (alpha >= beta)
                break;
            end
        end
    elseif (player == 2)
        if (score < beta)
            beta = score;
            board = child;
            
            if (alpha >= beta)
                break;
            end
        end
    end
end

if (player == 1)
    score = beta;
elseif (player == 2)
    score = alpha;
end

end