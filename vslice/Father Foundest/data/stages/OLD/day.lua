function onCreate()
	-- background shit

	makeLuaSprite('cliff', 'daystage/cliff', 600, 500);
	setScrollFactor('cliff', 1, 1);

	makeLuaSprite('bg', 'daystage/mounts', -800, -300);
	setScrollFactor('bg', 0.8, 0.8);
	
	makeLuaSprite('sun', 'daystage/sun', -200, -265);
	setScrollFactor('sun', 0.2, 0.2);

	makeLuaSprite('sky', 'daystage/sky', -700, -650);
	setScrollFactor('sky', 0, 1);


	addLuaSprite('sky', false);
	addLuaSprite('sun', false);
	addLuaSprite('bg', false);
	addLuaSprite('cliff', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end