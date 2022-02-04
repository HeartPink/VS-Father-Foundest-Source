--gameover line!
--todo:figure out how to load death lines from da file i guess

-- also to do is figure out how to change the default values of the mfn combo shit!! it covers teddys head and heli gf

function onGameOverStart()
	makeLuaText("gameovertext", "You fucking. died. Bitch", 0, 30, 680);
	addLuaText("gameovertext");
end