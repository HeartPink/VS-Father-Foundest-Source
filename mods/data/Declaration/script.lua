function onUpdate()

    for i=0,3 do
        noteTweenAlpha(i+16, i, math.floor(curStep/9000), 0.0001)
    end
    -- Hides rushdead's notes

end