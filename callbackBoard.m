% set focus to a hidden push button to remove ugly dotted focus borders
setfocus(findobj('Tag', 'hackPushButton'));

if (clear)
    clear = false;
    clearGameBoard;
    return;
end

position = get(gcbo, 'UserData');
row = position(1);
col = position(2);

board = play( board, whosTurn, row, col );

switchTurn;

if (type ~= TYPE.HUMAN_VS_HUMAN)
    computersMove;
end

winner = findWinner(board);
if (winner)
    wins(winner) = wins(winner) + 1;
    fprintf('We have a winner: %i\n', winner);
    
    clear = true;
    updateScoreboard(wins(1), wins(2), ties);
    return;
end

% check for a tie
if (nnz(board) == prod(size(board)))
    ties = ties + 1;
    disp('We have a tie!');
    
    clear = true;
    updateScoreboard(wins(1), wins(2), ties);
    return;
end
