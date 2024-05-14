local flowBF=false

function onUpdate(elapsed)
if flowBF then
triggerEvent('Camera Follow Pos', 850, 530)
else
triggerEvent('Camera Follow Pos', 600, 520)
end
end

function onBeatHit()
if curBeat == 16 or curBeat == 48 or curBeat == 80 or curBeat == 112 or curBeat == 144 or curBeat == 176 or curBeat == 208 or curBeat == 240 or curBeat == 272 then
flowBF=true
end

if curBeat == 32 or curBeat == 64 or curBeat == 96 or curBeat == 128 or curBeat == 160 or curBeat == 192  or curBeat == 224 or curBeat == 256 then
flowBF=false
end

end
