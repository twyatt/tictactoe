function [ output_args ] = setPlayerName( player, name )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

players = ['X', 'O'];

tag = sprintf('player%iStaticText', player);
handle = findobj('Tag', tag);

text = sprintf('%s (%s)', name, players(player));
set(handle, 'String', text);

output_args = true;

end

