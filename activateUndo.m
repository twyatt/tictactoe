undoTurn = whosTurn;
undoBoard = board;
undoWins = wins;
undoTies = ties;

set(findobj('Tag', 'menuUndoMove'), 'Enable', 'on');
