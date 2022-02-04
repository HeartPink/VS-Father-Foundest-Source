function onCreate()
    setProperty('health', 1.4);
end

function opponentNoteHit()
    if dadName == 'sam' then
        health = getProperty('health')
         if getProperty('health') > 0.3 then
            setProperty('health', health- 0.01);
        end
    else
        health = getProperty('health')
        if getProperty('health') > 0.5 then
            setProperty('health', health- 0.02);
        end
    end

end