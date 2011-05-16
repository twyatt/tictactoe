% set no winner yet when game starts
wins = zeros(1, 2);

% set game to a non tied state on start up
ties = 0;

clearBoardOnNextClick = false; % boolean to have next click clear the game board

clearBoard;
scoreboardUpdate(wins(1), wins(2), ties);
