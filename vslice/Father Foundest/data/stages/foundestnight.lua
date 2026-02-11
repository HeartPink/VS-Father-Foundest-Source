local baseY = 0
local time = 0

function onCreatePost()
    -- Store GF's starting Y position
    baseY = getProperty('gf.y')
end

function onUpdate(elapsed)
    time = time + elapsed
    
    -- Adjust these values to control movement
    local amplitude = 10      -- how far up/down
    local speed = 1           -- how fast
    
    setProperty('gf.y', baseY + math.sin(time * speed) * amplitude)
end