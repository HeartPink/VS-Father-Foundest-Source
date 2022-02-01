local lastBpmChangeTime = 0;
local lastBpmChangeBeat = 0;
local prevBpm = 0;
local prevCrochet = 0;

function onCreate()
	-- background shit
	makeLuaSprite('sambg', 'nightstage/sambg', -600, -300);
	setScrollFactor('sambg', 0.3, 0.3);

	makeLuaSprite('eagle', 'nightstage/EAGLE', 970, 550);
	makeAnimatedLuaSprite('wingFRONT', 'nightstage/wingFRONT', 1000, 250);
	addAnimationByPrefix('wingFRONT', 'flap', 'WingFORE', 24, true)
	makeAnimatedLuaSprite('wingBACK', 'nightstage/wingBACK', 970, 350);
	addAnimationByPrefix('wingBACK', 'flapB', 'WingBACK', 24, true)


-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('cloudBACK', 'nightstage/BACKCLOUD', 0, 300);
		setScrollFactor('cloudBACK', 0.5, 0.5);

		makeLuaSprite('cloudFRONT', 'nightstage/FRONTCLOUD', 0, 500);
		setScrollFactor('cloudFROTN', 0.8, 0.8);
	end

	addLuaSprite('sambg', false);
	addLuaSprite('cloudBACK', false);
	addLuaSprite('wingBACK', true);
	addLuaSprite('eagle', false);
	addLuaSprite('wingFRONT', true);
	addLuaSprite('cloudFRONT', true);
end



function onUpdatePost(elapsed)
	local wave = math.sin((getSongPosition() - lastBpmChangeTime) / crochet * math.pi / 4);
	setProperty('boyfriend.y', 20 * wave + 350);	--bf-car y, idk why defaultBoyfriendY not work tbh
	setProperty('eagle.y', 20 * wave + 350);
	setProperty('gf.y', -50 * wave - 250);			--lol??
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
