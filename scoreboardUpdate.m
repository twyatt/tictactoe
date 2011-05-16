function [ output_args ] = scoreboardUpdate(player1Wins, player2Wins, ties)

% TODO: save to file

player1WinsStaticText = findobj('Tag', 'player1WinsStaticText');
set(player1WinsStaticText, 'String', num2str(player1Wins));

player2WinsStaticText = findobj('Tag', 'player2WinsStaticText');
set(player2WinsStaticText, 'String', num2str(player2Wins));

tiesStaticText = findobj('Tag', 'tiesStaticText');
set(tiesStaticText, 'String', num2str(ties));

output_args = true;

end
