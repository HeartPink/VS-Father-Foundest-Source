function onCreate()
    setProperty('health', 1.7); -- makes bf start with more health that normal
end

function opponentNoteHit() -- every time the opponent hits a note

    if dadName == 'sam' then
        
        health = getProperty('health')
        
        if getProperty('health') > 0.3 then 
            setProperty('health', health- 0.01); -- if the opponent is normal ass sam, do a little damage and get bf down to 15% max health
        end

    else

        health = getProperty('health')

        if dadName == 'scam-angry' then
            cameraShake("game", 0.008, 0.09) -- samera shakes a LOT when the opponent is scam
        else
            cameraShake("game", 0.004, 0.04) -- samera shakes a little when the opponent isnt scam, but since this is in the else, it doesnt apply to normal sam
        end

        if getProperty('health') > 0.5 then
            setProperty('health', health- 0.02); -- if the opponent isnt normal ass sam (aka sam-angry) then do good damage until bf is down to 25% health.
        end
    end -- end of the if else

end -- end of opponentNoteHit

function goodNoteHit() -- roids bf up to do more damange than usual
    health = getProperty('health')
    setProperty('health', health+ 0.017);
end