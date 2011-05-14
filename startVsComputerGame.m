function [ output_args ] = startVsComputerGame( difficulty )
%STARTVSCOMPUTERGAME Starts a tic tac toe game at specified difficulty.

disp(['Starting game vs. computer at ', difficulty, ' difficulty.']);
game = openfig('game');
set(game, 'UserData', 1);

output_args = true;

end

