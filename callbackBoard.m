%set(gcbo, 'String', 'X');
%set(gcbo, 'Enable', 'off');

position = get(gcbo, 'UserData');
row = position(1);
col = position(2);

board = play( board, whosTurn, row, col );

whosTurn = whosTurn + 1;
if (whosTurn > 2)
    whosTurn = 1;
end