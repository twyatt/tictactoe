player1WinsStaticText = findobj('Tag', 'player1WinsStaticText');
set(player1WinsStaticText, 'String', num2str(wins(1)));

player2WinsStaticText = findobj('Tag', 'player2WinsStaticText');
set(player2WinsStaticText, 'String', num2str(wins(2)));

tiesStaticText = findobj('Tag', 'tiesStaticText');
set(tiesStaticText, 'String', num2str(ties));
