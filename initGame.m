% set player 1 to go first
whosTurn = 1;

% set no winner yet when game starts
wins = zeros(1, 2);

% set game to a non tied state on start up
ties = 0;

clear = false; % variable used to have next click clear the game board
clearGameBoard;