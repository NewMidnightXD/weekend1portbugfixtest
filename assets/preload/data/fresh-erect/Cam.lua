local flowBF=false

function onUpdate(elapsed)
if flowBF then
triggerEvent('Camera Follow Pos', 850, 530)
else
triggerEvent('Camera Follow Pos', 580, 400)
end
end

function onBeatHit()
if curBeat == 4 or curBeat == 12 or curBeat == 20 or curBeat == 28 or curBeat == 36 or curBeat == 44 or curBeat == 56 or curBeat == 72 or curBeat == 84 or curBeat == 92 or curBeat == 104 or curBeat == 116 or curBeat == 124 then
flowBF=true
end

if curBeat == 8 or curBeat == 16 or curBeat == 24 or curBeat == 32 or curBeat == 40 or curBeat == 48 or curBeat == 64 or curBeat == 80 or curBeat == 88 or curBeat == 96 or curBeat == 112 or curBeat == 120 then
flowBF=false
end

end
