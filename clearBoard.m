deactivateUndo;

disp('Reseting game board.');
board = zeros(3);
boardRender(board);
boardColor(board);

clearBoardOnNextClick = false; % boolean to have next click clear the game board

disp('Setting turn to player X.');
% set player 1 to go first
whosTurn = 1;
