local lastBpmChangeTime = 0;
local lastBpmChangeBeat = 0;
local prevBpm = 0;
local prevCrochet = 0;

function onCreate()
	-- background shit
	makeLuaSprite('sambg', 'nightstage/sambg', -600, -300);
	setScrollFactor('sambg', 0.3, 0.3);

	makeLuaSprite('eagle', 'nightstage/EAGLE', 970, 550);
	makeAnimatedLuaSprite('wingFRONT', 'nightstage/wingFRONT', 1280, 7777777);
	makeAnimatedLuaSprite('wingBACK', 'nightstage/wingBACK', 1170, 7777777); --Apparently the wave code is what sets the Y position. wtf ninja???
	addAnimationByPrefix('wingFRONT', 'flap', 'WingFORE', 24, true);
	addAnimationByPrefix('wingBACK', 'flapB', 'WingBACK', 24, true);

	makeLuaSprite('cloudBACK', 'nightstage/BACKCLOUD', 0, 300);
	makeLuaSprite('cloudBACK2', 'nightstage/BACKCLOUD', -520, 380);
	setScrollFactor('cloudBACK', 0.4, 0.4);
	setScrollFactor('cloudBACK2', 0.5, 0.5);

	makeLuaSprite('cloudFRONT', 'nightstage/FRONTCLOUD', -500, 500);
	makeLuaSprite('cloudFRONT2', 'nightstage/FRONTCLOUD', 600, 470);
	setScrollFactor('cloudFRONT', 0.8, 0.8);
	setScrollFactor('cloudFRONT2', 0.9, 0.9);


	addLuaSprite('sambg', false);
	if not lowQuality then
	addLuaSprite('cloudBACK2', false);
	addLuaSprite('cloudBACK', false);
	addLuaSprite('wingBACK', false);
	end
	addLuaSprite('eagle', false);
	if not lowQuality then
	addLuaSprite('wingFRONT', true);
	addLuaSprite('cloudFRONT', true);
	addLuaSprite('cloudFRONT2', true);
	end
end



function onUpdatePost(elapsed)
	if not lowQuality then
		local wave = math.sin((getSongPosition() - lastBpmChangeTime) / crochet * math.pi / 4);
		setProperty('boyfriend.y', 20 * wave + 265);	--bf-car y, idk why defaultBoyfriendY not work tbh   -- I assume for the same reason its "boyfriend" in the json? idk but i think its funny this makes bf float on death too lol
		setProperty('eagle.y', 20 * wave + 500);
		setProperty('wingFRONT.y', 20 * wave + 293);
		setProperty('wingBACK.y', 20 * wave + 293);
		setProperty('gf.y', -50 * wave - 250);			--lol??
	end
end

function onSongStart()
	lastBpmChangeTime = 0;
	lastBpmChangeBeat = 0;
	prevBpm = curBpm;
	prevCrochet = crochet;
end

function onBeatHit()	--changebpm stuff all called before this so should be good!
	if curBpm ~= prevBpm then
		lastBpmChangeTime = lastBpmChangeTime + (curBeat - lastBpmChangeBeat) * prevCrochet;
		lastBpmChangeBeat = curBeat;
		prevBpm = curBpm;
		prevCrochet = crochet;
	end
end
-- someone rly gotta add hooks for this shit on psych fr fr !!!!!
-- very easy just make lastChange from MusicBeatState.updateCurStep() a public variable outside the function scope so we can getPropertyFromClass shit
