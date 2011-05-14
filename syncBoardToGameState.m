function [ output_args ] = syncBoardToGameState( gameState )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

disp('Syncronizing board to game state: ');
disp(gameState);

players = ['X', 'O'];

for m = 1 : size(gameState, 1)
    for n = 1 : size(gameState, 2)
        state = gameState(m, n);
        square = getSquareAt(m, n);
        
        if (state == 0)
            char = '';
            enable = 'on';
        else
            char = players(state);
            enable = 'off';
        end
        
        set(square, 'Enable', enable);
        set(square, 'String', char);
    end
end

output_args = true;

end

