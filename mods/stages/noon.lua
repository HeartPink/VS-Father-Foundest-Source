function onCreate()
	-- background shit

	--makeLuaSprite('darkns', 'noonstage/darkns', -400, -400);
	--setScrollFactor('darkns', 0, 0);

	makeLuaSprite('cliff', 'noonstage/cliff', 600, 500);
	setScrollFactor('cliff', 1, 1);

	makeLuaSprite('bg', 'noonstage/mounts', -800, -300);
	setScrollFactor('bg', 0.8, 0.8);

	makeLuaSprite('sky', 'noonstage/sky', -400, -200);
	setScrollFactor('sky', 0, 0);


	
	addLuaSprite('sky', false);
	addLuaSprite('bg', false);
	addLuaSprite('cliff', false);
	--addLuaSprite('darkns', true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end 