function onCreate()
	setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'pico-dead')
	setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pico')
	setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameplay/gameover/gameOver-pico')
	setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameplay/gameover/gameOverEnd-pico')
	setPropertyFromClass('substates.PauseSubState', 'songName', 'breakfast-pico/breakfast-pico')
	
	makeLuaSprite('cutsceneCrutchBlack', 'empty', 0, 0);
	makeGraphic('cutsceneCrutchBlack', 3000, 2000, '000000');
	setObjectCamera('cutsceneCrutchBlack', 'other');

	makeLuaSprite('shootBlack', 'empty', 0, 0);
	makeGraphic('shootBlack', 3000, 2000, '000000');
	setProperty('shootBlack.alpha', 0);
	addLuaSprite('shootBlack', false);
end

local video = true

function onEndSong()
	if video and isStoryMode then
		startVideo('2hotCutscene');
		addLuaSprite('cutsceneCrutchBlack', true);
		video = false
		return Function_Stop;
	end
	return Function_Continue;
end

local isGameOver = false
local darnellAnim = false
local picoAnim = false
local bullet = 0
local reload = false

--[[function onGameOver()
	runTimer('gameOverStart', 91/24);
	isGameOver = true
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'gameOverStart' and picoAnim then
		runHaxeCode([[
			boyfriend.playAnim('deathLoop');
		]]--)
	--end
--end

function opponentNoteHit(id, direction, noteType, isSustainNote)
	if direction == 1 and darnellAnim then
		playAnim('dad', 'lightCan', false);
		setProperty('dad.specialAnim', true);
	end
	if direction == 2 and darnellAnim then
		playAnim('dad', 'kickCan', false);
		setProperty('dad.specialAnim', true);
		playAnim('2hotSpraycan', 'start', false);
		setProperty('2hotSpraycan.alpha', 1);
	end
	if direction == 3 and darnellAnim then
		playAnim('dad', 'kneeCan', false);
		setProperty('dad.specialAnim', true);
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
	if direction == 1 and picoAnim then
		reload = true
		bullet = bullet +1
		playAnim('boyfriend', 'cock', false);
		setProperty('boyfriend.specialAnim', true);
		playSound('Gun_Prep', 1);
		makeAnimatedLuaSprite('PicoBullet'..bullet, 'PicoBullet', 2150, 850);
		addAnimationByPrefix('PicoBullet'..bullet, 'Bullet', 'Bullet', 24, false);
		addAnimationByPrefix('PicoBullet'..bullet, 'Pop', 'Pop', 24, false);
		scaleObject('PicoBullet'..bullet, 1, 1);
		setScrollFactor('PicoBullet'..bullet, 1, 1);
		addLuaSprite('PicoBullet'..bullet, false);
	end
	if direction == 0 and picoAnim and reload then
		reload = false
		playAnim('boyfriend', 'shoot', false);
		setProperty('boyfriend.specialAnim', true);
		playAnim('2hotSpraycan', 'shooted', false);
		playSound('shot'..getRandomInt(1,3), 1);
		setProperty('shootBlack.alpha', 1);
		doTweenAlpha('shootBlack', 'shootBlack', 0, 1, 'linear')
	elseif direction == 0 and picoAnim and not reload then
		health = getProperty('health')
		playAnim('boyfriend', 'CanHit', false);
		setProperty('boyfriend.specialAnim', true);
		playAnim('2hotSpraycan', 'missed', false);
		setProperty('health', health -0.5);
		playSound('Pico_Bonk', 1);
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if direction == 0 and picoAnim then
		reload = false
		health = getProperty('health')
		playAnim('boyfriend', 'CanHit', false);
		setProperty('boyfriend.specialAnim', true);
		playAnim('2hotSpraycan', 'missed', false);
		setProperty('health', health -0.5);
		playSound('Pico_Bonk', 1);
	end
end

function onStepHit()
	if curStep >= 108 and curStep <= 126 or curStep >= 492 and curStep <= 510 or curStep >= 620 and curStep <= 638 or curStep >= 972 and curStep <= 990 or curStep >= 1036 and curStep <= 1054 or curStep >= 1420 and curStep <= 1438 then
		darnellAnim = true
	else
		darnellAnim = false
	end
	if curStep >= 119 and curStep <= 126 or curStep >= 503 and curStep <= 510 or curStep >= 631 and curStep <= 638 or curStep >= 983 and curStep <= 990 or curStep >= 1047 and curStep <= 1054 or curStep >= 1431 and curStep <= 1438 then
		picoAnim = true
		setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'pico-can-explosion-dead')
		setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'gameplay/gameover/fnf_loss_sfx-pico-explode')
		setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameplay/gameover/gameOverStart-pico-explode')
		setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameplay/gameover/gameOverEnd-pico')
	else
		picoAnim = false
		setPropertyFromClass('substates.GameOverSubstate', 'characterName', 'pico-dead')
		setPropertyFromClass('substates.GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx-pico')
		setPropertyFromClass('substates.GameOverSubstate', 'loopSoundName', 'gameplay/gameover/gameOver-pico')
		setPropertyFromClass('substates.GameOverSubstate', 'endSoundName', 'gameplay/gameover/gameOverEnd-pico')
	end
	if curStep == 126 or curStep == 510 or curStep == 638 or curStep == 990 or curStep == 1054 or curStep == 1438 then
		doTweenX('PicoBulletTweenX'..bullet, 'PicoBullet'..bullet, 2149 +getRandomInt(1,51), 0.5, 'cubeOut')
	end
end