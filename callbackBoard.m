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

whosTurn = whosTurn + 1;
if (whosTurn > 2)
    whosTurn = 1;
end

winner = checkForWin(board);
if (winner)
    wins(winner) = wins(winner) + 1;
    fprintf('We have a winner: %i\n', winner);
    
    clear = true;
    updateScoreboard;
    return;
end

% check for a tie
if (nnz(board) == prod(size(board)))
    ties = ties + 1;
    disp('We have a tie!');
    
    clear = true;
    updateScoreboard;
    return;
end
