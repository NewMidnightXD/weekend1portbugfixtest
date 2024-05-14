function onCreatePost()
setProperty('defaultCamZoom',1)
doTweenZoom('camgn','camGame', 1, 0.0001,'linear')
end

function onBeatHit()
if curBeat == 96 or curBeat == 160 or curBeat == 240 or curBeat == 254 or curBeat == 304 or curBeat == 315 or curBeat == 320 or curBeat == 329 or curBeat == 337 or curBeat == 379 or curBeat == 383 then
setProperty('defaultCamZoom',1.1)
end
if curBeat == 112 or curBeat == 176 or curBeat == 248 or curBeat == 312 or curBeat == 316 or curBeat == 328 or curBeat == 336 or curBeat == 376 or curBeat == 380 then
setProperty('defaultCamZoom',1.2)
end
if curBeat == 112 or curBeat == 184 or curBeat == 252 then
setProperty('defaultCamZoom',1.25)
end
if curBeat == 120 or curBeat == 188 then
setProperty('defaultCamZoom',1.3)
end
if curBeat == 124 then
setProperty('defaultCamZoom',1.35)
end
if curBeat == 128 or curBeat == 272 or curBeat == 352 then
setProperty('defaultCamZoom',0.9)
end
if curBeat == 191 then
setProperty('defaultCamZoom',0.9)
doTweenZoom('camgn','camGame', 0.9, 2,'linear')
end
if curBeat == 384 then
setProperty('defaultCamZoom',1)
end
end

function onUpdate()
zoom = (getProperty('defaultCamZoom'))
end