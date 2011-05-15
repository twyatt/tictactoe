function [ score, board ] = minimax( player, board, alpha, beta )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

%fprintf('minimax(player: %i, alpha: %i, beta: %i):\n', player, alpha, beta);
%disp(board);

% check for end node
if (nnz(board) == prod(size(board)) || findWinner(board)) % tie or winner
    score = boardScore(board, player);
    return;
end

% determine other player
other = player + 1;
if (other > 2)
    other = 1;
end

children = boardChildren(player, board);

for i = 1 : size(children, 3)
    child = children(:, :, i);
    [score, dummy] = minimax( other, child, alpha, beta );
    
    %disp('---');
    %disp(score);
    %disp(child);
    
    if (player ~= 1)
        if (score < beta)
            beta = score;
            board = child;
            
            if (alpha >= beta)
                break;
            end
        end
    else
        if (score > alpha)
            alpha = score;
            board = child;
            
            if (alpha >= beta)
                break;
            end
        end
    end
end

if (player == 1)
    score = alpha;
elseif (player == 2)
    score = beta;
end

end