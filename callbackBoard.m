%set(gcbo, 'String', 'X');
%set(gcbo, 'Enable', 'off');

position = get(gcbo, 'UserData');
row = position(1);
col = position(2);

gameState = play( gameState, whosTurn, row, col );