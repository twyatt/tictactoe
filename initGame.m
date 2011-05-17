rand('seed', 1000 * sum(clock));

loadAudio;

global TYPE;
TYPE = struct('HUMAN_VS_HUMAN', 1, 'EASY', 2, 'MODERATE', 3, 'EXPERT', 4);

type = TYPE.HUMAN_VS_HUMAN;

player1Name = 'Player 1';
player2Name = 'Player 2';

newGame;
