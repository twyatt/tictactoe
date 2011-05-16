global TYPE;
TYPE = struct('HUMAN_VS_HUMAN', 1, 'EASY', 2, 'MODERATE', 3, 'HARD', 4);

type = TYPE.HUMAN_VS_HUMAN;

% set no winner yet when game starts
wins = zeros(1, 2);

% set game to a non tied state on start up
ties = 0;

clearBoardOnNextClick = false; % boolean to have next click clear the game board

clearGameBoard;
updateScoreboard(wins(1), wins(2), ties);
