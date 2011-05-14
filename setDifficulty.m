initGame;

set(findobj('Tag', 'menuTypeHumanVsHuman'), 'Checked', 'off');
set(findobj('Tag', 'menuTypeEasy'),         'Checked', 'off');
set(findobj('Tag', 'menuTypeModerate'),     'Checked', 'off');
set(findobj('Tag', 'menuTypeHard'),         'Checked', 'off');

set(gcbo, 'Checked', 'on');

difficulty = get(gcbo, 'UserData');
if (difficulty == 1)
    type = TYPE.EASY;
    setPlayerName(2, 'Easy');
elseif (difficulty == 2)
    type = TYPE.MODERATE;
    setPlayerName(2, 'Moderate');
elseif (difficulty == 3)
    type = TYPE.HARD;
    setPlayerName(2, 'Hard');
end
