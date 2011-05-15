% set focus to a hidden push button to remove ugly dotted focus borders
setfocus(findobj('Tag', 'hackPushButton'));

if (clearBoard)
    clearBoard = false;
    clearGameBoard;
    return;
end

position = get(gcbo, 'UserData');
row = position(1);
col = position(2);

board = play( board, whosTurn, row, col );
clear position row col; % clean up

switchTurn;

if (type ~= TYPE.HUMAN_VS_HUMAN)
    computersMove;
end

winner = findWinner(board);
if (winner)
    
    wins(winner) = wins(winner) + 1;
    fprintf('We have a winner: %i\n', winner);
    
    clearBoard = true;
    updateScoreboard(wins(1), wins(2), ties);

% check for a tie
elseif (nnz(board) == prod(size(board)))

    ties = ties + 1;
    disp('We have a tie!');
    
    clearBoard = true;
    updateScoreboard(wins(1), wins(2), ties);
    
end

clear winner; % clean up
