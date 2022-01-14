function onCreate()
	-- background shit
	makeLuaSprite('sambg', 'nightstage/sambg', -600, -300);
	setScrollFactor('sambg', 0.3, 0.3);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('cloudBACK', 'nightstage/BACKCLOUD', 0, 300);
		setScrollFactor('cloudBACK', 0.5, 0.5);

		makeLuaSprite('cloudBACK2', 'nightstage/BACKCLOUD', -500, 300);
		setScrollFactor('cloudBACK2', 0.5, 0.5);

		makeLuaSprite('cloudBACK3', 'nightstage/BACKCLOUD', 500, 300);
		setScrollFactor('cloudBACK3', 0.5, 0.5);

		--scaleObject('cloudBACK', 1.1, 1.1);

		makeLuaSprite('cloudFRONT', 'nightstage/FRONTCLOUD', 0, 500);
		setScrollFactor('cloudFROTN', 0.8, 0.8);
	end
	
	makeLuaSprite('eagle', 'nightstage/EAGLE', 970, 550);
	--scaleObject('eagle', 0.6, 0.6);
	setScrollFactor('eagle', 0.9, 0.9);

	

	addLuaSprite('sambg', false);
	addLuaSprite('cloudBACK3', false);
	addLuaSprite('cloudBACK2', false);
	addLuaSprite('cloudBACK', false);
	
	addLuaSprite('eagle', false);
	addLuaSprite('cloudFRONT', true);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

--function onBeatHit()
--	objectPlayAnimation('cloudFRONT', 'frontscroll', true)
--		setProperty('cloudFRONT.x', 10)
--
--	if curBeat % 8 == 4 then
--		objectPlayAnimation('cloudFRONT','frontscroll', true)
--	end
--end