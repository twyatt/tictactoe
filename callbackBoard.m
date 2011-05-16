% set focus to a hidden push button to remove ugly dotted focus borders
setfocus(findobj('Tag', 'hackPushButton'));

if (clearBoardOnNextClick)
    clearBoardOnNextClick = false;
    clearGameBoard;
    return;
end

position = get(gcbo, 'UserData');
row = position(1);
col = position(2);

% TODO: check that square hasn't already been played, if so then "return"
% to prevent switchTurn, etc
board = play( board, whosTurn, row, col );
clear position row col; % clean up

switchTurn;

if (type ~= TYPE.HUMAN_VS_HUMAN)
    if ( ~boardIsFull(board) ) % insure that the board is not full
        computersMove;
    end
end

renderBoard(board);

winner = findWinner(board);
if (winner)
    
    wins(winner) = wins(winner) + 1;
    fprintf('We have a winner: %i\n', winner);
    gameOver;
    
% check for a tie
elseif ( boardIsFull(board) )

    ties = ties + 1;
    disp('We have a tie!');
    gameOver;
    
end

clear winner; % clean up
