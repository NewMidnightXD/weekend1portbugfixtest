local beat1=false
local beat2=true

function onStepHit()
if curStep % 4 == 0 and beat2 then
doTweenZoom('camhz','camHUD', 1.015, 0.0001,'linear')
doTweenZoom('camhn','camHUD', 1, 0.2,'linear')

doTweenZoom('camgz','camGame', zoom+0.010, 0.0001,'linear')
doTweenZoom('camgn','camGame', zoom, 0.2,'linear')
end
end

function onBeatHit()
if curBeat % 2 ==0 and beat1 then
doTweenZoom('camhz','camHUD', 1.015, 0.0001,'linear')
doTweenZoom('camhn','camHUD', 1, 0.2,'linear')

doTweenZoom('camgz','camGame', zoom+0.010, 0.0001,'linear')
doTweenZoom('camgn','camGame', zoom, 0.2,'linear')
end
if curBeat == 34 or curBeat == 109 then
beat1=true
beat2=false
end
if curBeat == 49 or curBeat == 139 then
beat1=false
beat2=true
end
if curBeat == 55 then
beat1=false
beat2=false
end
if curBeat == 56 then
setProperty('defaultCamZoom',1.1)
end
if curBeat == 60 then
setProperty('defaultCamZoom',1.2)
end
if curBeat == 64 then
setProperty('defaultCamZoom',1.05)
end
if curBeat == 66 then
beat1=false
beat2=true
end
if curBeat == 107 then
beat1=false
beat2=false
doTweenZoom('camgn','camGame', zoom, 0.2,'linear')
end
if curBeat == 112 or curBeat == 120 then
setProperty('defaultCamZoom',1.1)
end
if curBeat == 114 or curBeat == 122 then
setProperty('defaultCamZoom',1.15)
end
if curBeat == 116 or curBeat == 124 then
setProperty('defaultCamZoom',1.2)
end
if curBeat == 118 or curBeat == 126 then
setProperty('defaultCamZoom',1.25)
end
if curBeat == 128 then
setProperty('defaultCamZoom',1.05)
end
if curBeat == 130 then
beat1=true
beat2=false
end
end

function onUpdate()
zoom = (getProperty('defaultCamZoom'))
end