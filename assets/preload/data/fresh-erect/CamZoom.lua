function onCreatePost()
setProperty('defaultCamZoom',1)
doTweenZoom('camgn','camGame', 1, 0.0001,'linear')
end

function onBeatHit()
if curBeat == 32 or curBeat == 48 or curBeat == 64 or curBeat == 80 or curBeat == 113 then
setProperty('defaultCamZoom',0.9)
end
if curBeat == 44 or curBeat == 72 or curBeat == 78 or curBeat == 142 then
setProperty('defaultCamZoom',1)
end
if curBeat == 62 then
setProperty('defaultCamZoom',0.95)
end
if curBeat == 74 or curBeat == 138 or curBeat == 152 then
setProperty('defaultCamZoom',1.1)
end
if curBeat == 76 or curBeat == 136 or curBeat == 140 or curBeat == 144 then
setProperty('defaultCamZoom',1.05)
end
if curBeat == 106 then
setProperty('defaultCamZoom',1.1)
doTweenZoom('camgn','camGame', 1.1, 3,'linear')
end
if curBeat == 111 then
setProperty('defaultCamZoom',1)
doTweenZoom('camgn','camGame', 1, 0.5,'linear')
end
if curBeat == 129 then
setProperty('defaultCamZoom',1)
doTweenZoom('camgn','camGame', 1, 3,'linear')
end
end

function onUpdate()
zoom = (getProperty('defaultCamZoom'))
end