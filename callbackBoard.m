% set focus to a hidden push button to remove ugly dotted focus borders
setfocus(findobj('Tag', 'hackPushButton'));

closePlayerNames;

if (clearBoardOnNextClick)
    clearBoardOnNextClick = false;
    clearBoard;
    return;
end

position = get(gcbo, 'UserData');
row = position(1);
col = position(2);

if (board(row, col)) % prevent playing an already taken square
    return;
end

wavplay(clickWav, clickFreq, 'async');

activateUndo;
board(row, col) = whosTurn;
clear position row col; % clean up

switchTurn;

if (type ~= TYPE.HUMAN_VS_HUMAN)
    if ( ~findWinner(board) && ~boardIsFull(board) ) % insure that the board is not full
        computersMove;
    end
end

boardRender(board);
boardColor(board);

winner = findWinner(board);
if (winner)
    
    wins(winner) = wins(winner) + 1;
    fprintf('We have a winner: %i\n', winner);
    
    if (type ~= TYPE.HUMAN_VS_HUMAN)
        if (winner == 1)
            wavplay(winWav, winFreq, 'async');
        else
            wavplay(loseWav, loseFreq, 'async');
        end
    end
    
    gameOver;
    
elseif ( boardIsFull(board) ) % check for a tie

    ties = ties + 1;
    disp('We have a tie!');
    gameOver;
    
end

clear winner; % clean up
