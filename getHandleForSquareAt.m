function [ handle ] = getHandleForSquareAt( m, n )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

id = n + (m - 1) * 3;
tag = sprintf('board%iPushButton', id);

%fprintf('Tag: %s\n', tag);
handle = findobj('Tag', tag);

end

