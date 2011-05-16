player1EditText = findobj('Tag', 'player1EditText');
player2EditText = findobj('Tag', 'player2EditText');

if ( strcmp( get(player1EditText, 'Visible'), 'on' ) )
    player1Name = get(player1EditText, 'String');
    setPlayerName(1, player1Name);
    set(player1EditText, 'Visible', 'off');
end

if ( strcmp( get(player2EditText, 'Visible'), 'on' ) )
    player2Name = get(player2EditText, 'String');
    setPlayerName(2, player2Name);
    set(player2EditText, 'Visible', 'off');
end

clear player1EditText player2EditText; % clean up
