function [ output_args ] = setPlayerName( player, name )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

if (~size(name, 2)) % set default name if none provided
    name = sprintf('Player %i', player);
end

players = ['X', 'O'];

tag = sprintf('player%iPushButton', player);
handle = findobj('Tag', tag);

text = sprintf('%s (%s)', name, players(player));
set(handle, 'String', text);

output_args = true;

end

