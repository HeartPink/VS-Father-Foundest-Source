--gameover line!
--todo:figure out how to load death lines from da file i guess

function onGameOverStart()
	makeLuaText("gameovertext", "You fucking. died. Bitch", 0, 30, 680);
	addLuaText("gameovertext");
end