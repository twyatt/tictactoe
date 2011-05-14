function [ output_args ] = renderBoard( board )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

disp('Rendering board data: ');
disp(board);

players = ['X', 'O'];

for m = 1 : size(board, 1)
    for n = 1 : size(board, 2)
        state = board(m, n);
        square = getHandleForSquareAt(m, n);
        
        if (state == 0)
            char = '';
            enable = 'on';
        else
            char = players(state);
            enable = 'off';
        end
        
        %set(square, 'Enable', enable);
        set(square, 'String', char);
    end
end

output_args = true;

end

