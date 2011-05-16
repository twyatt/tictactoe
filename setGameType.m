newGame;

set(findobj('Tag', 'menuTypeHumanVsHuman'), 'Checked', 'off');
set(findobj('Tag', 'menuTypeEasy'),         'Checked', 'off');
set(findobj('Tag', 'menuTypeModerate'),     'Checked', 'off');
set(findobj('Tag', 'menuTypeExpert'),       'Checked', 'off');

set(gcbo, 'Checked', 'on');
gameType = get(gcbo, 'UserData');

if (gameType == 1)
    type = TYPE.HUMAN_VS_HUMAN;
    setPlayerName(2, player2Name);
elseif (gameType == 2)
    type = TYPE.EASY;
    setPlayerName(2, 'Easy');
elseif (gameType == 3)
    type = TYPE.MODERATE;
    setPlayerName(2, 'Moderate');
elseif (gameType == 4)
    type = TYPE.EXPERT;
    setPlayerName(2, 'Expert');
end

clear gameType; % clean up
