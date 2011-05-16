[m, n] = find(board == 0);
available = [m, n];

index = ceil(rand() * size(available, 1));
row = available(index, 1);
col = available(index, 2);

fprintf('Computer playing at [%i, %i].\n', row, col);
board(row, col) = whosTurn;

clear m n available index row col; % clean up
