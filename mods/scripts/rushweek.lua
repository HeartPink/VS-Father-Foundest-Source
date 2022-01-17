--gameover line!
--todo:figure out how to load death lines from da file i guess

function onGameOverStart()
	makeLuaText("gameovertext", "You fucking. died. bich\nBitch", 800, 0, 0);
	addLuaText("gameovertext");
end