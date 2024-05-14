local moveMult = 20
local time = 0.05
local ease = 'linear'
local gf=false
local bf=true
local dad=true

local followchars = true;

function onUpdatePost()
if stringStartsWith(version, '0.5') or stringStartsWith(version, '0.6') then
time = 0.5
else
time = 0.05
end
    
if followchars == true then
if not flowBF then
if dad and getProperty('dad.animation.curAnim.name') == 'singLEFT' or dad and getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
doTweenX('camGameTarX', 'camGame.targetOffset', -moveMult, time, ease)
end
if dad and getProperty('dad.animation.curAnim.name') == 'singRIGHT' or dad and getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
doTweenX('camGameTarX', 'camGame.targetOffset', moveMult, time, ease)
end
if dad and getProperty('dad.animation.curAnim.name') == 'singUP' or dad and getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', -moveMult, time, ease)
end
if dad and getProperty('dad.animation.curAnim.name') == 'singDOWN' or dad and getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', moveMult, time, ease)
end
if dad and getProperty('dad.animation.curAnim.name') == 'idle' or dad and getProperty('dad.animation.curAnim.name') == 'idle-alt' then
 doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end
if dad and getProperty('dad.animation.curAnim.name') == 'danceLeft' or dad and getProperty('dad.animation.curAnim.name') == 'danceRight' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end
if gf and getProperty('gf.animation.curAnim.name') == 'singLEFT' or gf and getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
doTweenX('camGameTarX', 'camGame.targetOffset', -moveMult, time, ease)
end
if gf and getProperty('gf.animation.curAnim.name') == 'singRIGHT' or gf and getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
doTweenX('camGameTarX', 'camGame.targetOffset', moveMult, time, ease)
end
if gf and getProperty('gf.animation.curAnim.name') == 'singUP' or gf and getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', -moveMult, time, ease)
end
if gf and getProperty('gf.animation.curAnim.name') == 'singDOWN' or gf and getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', moveMult, time, ease)
end
if gf and getProperty('gf.animation.curAnim.name') == 'idle' or gf and getProperty('gf.animation.curAnim.name') == 'idle-alt' then
 doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end
if gf and getProperty('gf.animation.curAnim.name') == 'danceLeft' or gf and getProperty('gf.animation.curAnim.name') == 'danceRight' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end
gf2=false
else
gf=false
if bf and getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or bf and getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
doTweenX('camGameTarX', 'camGame.targetOffset', -moveMult, time, ease)
end
if bf and getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or bf and getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
doTweenX('camGameTarX', 'camGame.targetOffset', moveMult, time, ease)
end
if bf and getProperty('boyfriend.animation.curAnim.name') == 'singUP' or bf and getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', -moveMult, time, ease)
end
if bf and getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or bf and getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', moveMult, time, ease)
end
if bf and getProperty('boyfriend.animation.curAnim.name') == 'idle' or bf and getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
 doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end
if bf and getProperty('boyfriend.animation.curAnim.name') == 'danceLeft' or bf and getProperty('boyfriend.animation.curAnim.name') == 'danceRight' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end
if gf2 and getProperty('gf.animation.curAnim.name') == 'singLEFT' or gf2 and getProperty('gf.animation.curAnim.name') == 'singLEFT-alt' then
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
doTweenX('camGameTarX', 'camGame.targetOffset', -moveMult, time, ease)
end
if gf2 and getProperty('gf.animation.curAnim.name') == 'singRIGHT' or gf2 and getProperty('gf.animation.curAnim.name') == 'singRIGHT-alt' then
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
doTweenX('camGameTarX', 'camGame.targetOffset', moveMult, time, ease)
end
if gf2 and getProperty('gf.animation.curAnim.name') == 'singUP' or gf2 and getProperty('gf.animation.curAnim.name') == 'singUP-alt' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', -moveMult, time, ease)
end
if gf2 and getProperty('gf.animation.curAnim.name') == 'singDOWN' or gf2 and getProperty('gf.animation.curAnim.name') == 'singDOWN-alt' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', moveMult, time, ease)
end
if gf2 and getProperty('gf.animation.curAnim.name') == 'idle' or gf2 and getProperty('gf.animation.curAnim.name') == 'idle-alt' then
 doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end
if gf2 and getProperty('gf.animation.curAnim.name') == 'danceLeft' or gf2 and getProperty('gf.animation.curAnim.name') == 'danceRight' then
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end
end
end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
if getPropertyFromGroup('notes', id, 'gfNote') or noteType == 'GF Sing' then
gf2=true bf=false else gf2=false bf=true end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if getPropertyFromGroup('notes', id, 'gfNote') or noteType == 'GF Sing' then
gf=true dad=false else gf=false dad=true end
end

function onBeatHit()
if curBeat == 4 or curBeat == 12 or curBeat == 20 or curBeat == 28 or curBeat == 36 or curBeat == 44 or curBeat == 56 or curBeat == 72 or curBeat == 84 or curBeat == 92 or curBeat == 104 or curBeat == 116 or curBeat == 124 then
flowBF=true
end

if curBeat == 8 or curBeat == 16 or curBeat == 24 or curBeat == 32 or curBeat == 40 or curBeat == 48 or curBeat == 64 or curBeat == 80 or curBeat == 88 or curBeat == 96 or curBeat == 112 or curBeat == 120 then
flowBF=false
end

end
