function onBeatHit()
if curBeat == 68 or curBeat == 86 then
setProperty('defaultCamZoom',0.85)
end
if curBeat == 72 or curBeat == 80 or curBeat == 88 or curBeat == 160 then
setProperty('defaultCamZoom',0.9)
end
if curBeat == 76 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camgn','camGame', 1.1, 2,'linear')
end
if curBeat == 128 or curBeat == 139 or curBeat == 156 then
setProperty('defaultCamZoom',1)
end
if curBeat == 136 or curBeat == 144 or curBeat == 152 then
setProperty('defaultCamZoom',1.05)
end
if curBeat == 148 then
setProperty('defaultCamZoom',1.1)
end
end

function onUpdate()
zoom = (getProperty('defaultCamZoom'))
end