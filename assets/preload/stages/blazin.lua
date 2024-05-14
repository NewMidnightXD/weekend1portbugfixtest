function onCreate()
makeLuaSprite('sky', 'Darnell/phillyBlazin/skyBlur', 580, 1100)
scaleObject('sky', 0.95, 0.95)

makeAnimatedLuaSprite('Flashing', 'Darnell/phillyBlazin/lightning', 1000, 1000);
addAnimationByPrefix('Flashing', 'goo', 'lightning', 24, false);  
scaleObject('Flashing', 0.95, 0.95)  
objectPlayAnimation('Flashing', 'goo', true)

makeLuaSprite('street', 'Darnell/phillyBlazin/streetBlur', 580, 1100)
scaleObject('street', 0.95, 0.95)

makeAnimatedLuaSprite('rain', 'Darnell/phillyBlazin/rainblazin', -200, -50);
setLuaSpriteScrollFactor('rain', 0.3, 0.3);
addAnimationByPrefix('rain', 'loop', 'rainanim', 19, true);
scaleObject('rain', 1, 1);

addLuaSprite('sky',false)
addLuaSprite('Flashing', false);
addLuaSprite('street',false)
addLuaSprite('rain', true);
end

function onBeatHit()
if curBeat % 27 == 0 then
playSound('Lightning1', 2);
cameraFlash('camGame', 'FFFFFF', 0.8);
objectPlayAnimation('Flashing', 'goo', true)
end
end