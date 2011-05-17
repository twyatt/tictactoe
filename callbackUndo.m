whosTurn = undoTurn;
board = undoBoard;
wins = undoWins;
ties = undoTies;

boardRender(board);
boardColor(board);
scoreboardUpdate(wins(1), wins(2), ties);

clearBoardOnNextClick = false;

deactivateUndo;
