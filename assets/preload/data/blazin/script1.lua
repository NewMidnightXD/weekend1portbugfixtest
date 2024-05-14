local moveMult = 0
local time = 0.05
local ease = 'linear'
function onUpdatePost()
doTweenX('camGameTarX', 'camGame.targetOffset', 0, time, ease)
doTweenY('camGameTarY', 'camGame.targetOffset', 0, time, ease)
end