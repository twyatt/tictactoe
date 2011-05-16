function [ full ] = boardIsFull( board )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

% not compatible with 2006a:
%full = (nnz(board) == numel(board));

full = (nnz(board) == prod(size(board)));

end
