% set focus to a hidden push button to remove ugly dotted focus borders
setfocus(findobj('Tag', 'hackPushButton'));

closePlayerNames;

if (strcmp(get(gcbo, 'Style'), 'pushbutton'))
    
    number = get(gcbo, 'UserData');
    id = sprintf('player%iEditText', number);
    handle = findobj('Tag', id);
    
    if (number == 1)
        set(handle, 'String', player1Name);
        set(handle, 'Visible', 'on');
        setfocus(handle);
    elseif (number == 2 && type == TYPE.HUMAN_VS_HUMAN)
        set(handle, 'String', player2Name);
        set(handle, 'Visible', 'on');
        setfocus(handle);
    end
    
    clear number id handle; % clean up
    
end
