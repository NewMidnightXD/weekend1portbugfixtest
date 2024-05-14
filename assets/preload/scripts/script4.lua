x = 630

x2 =735

x3 =850

x4 =960

y = -50

notePlash = {'sustainpurple', 'sustainblue', 'sustaingreen', 'sustainred'}

function onCreate()

 makeAnimatedLuaSprite('sustainpurple', 'Ui Update/holdCoverPurple', x, y)
 addAnimationByPrefix('sustainpurple', 'purple', 'holdCoverPurple', 24, false)
 addAnimationByPrefix('sustainpurple', 'final', 'holdCoverEndPurple', 24, false)
 setObjectCamera('sustainpurple', 'camOther')
 setProperty('sustainpurple.visible', false)
 addLuaSprite('sustainpurple', true) 

 makeAnimatedLuaSprite('sustainblue', 'Ui Update/holdCoverBlue', x2, y)
 addAnimationByPrefix('sustainblue', 'blue', 'holdCoverBlue', 24, false)
 addAnimationByPrefix('sustainblue', 'final', 'holdCoverEndBlue', 24, false)
 setObjectCamera('sustainblue', 'camOther')
 setProperty('sustainblue.visible', false)
 addLuaSprite('sustainblue', true)
 
 makeAnimatedLuaSprite('sustaingreen', 'Ui Update/holdCoverGreen', x3, y)
 addAnimationByPrefix('sustaingreen', 'green', 'holdCoverGreen', 24, false)
 addAnimationByPrefix('sustaingreen', 'final', 'holdCoverEndGreen', 24, false)
 addAnimationByPrefix('sustaingreen', 'green', 'falseanim', 24, true)
 setObjectCamera('sustaingreen', 'camOther')
 setProperty('sustaingreen.visible', false)
 addLuaSprite('sustaingreen', true) 
 
 makeAnimatedLuaSprite('sustainred', 'Ui Update/holdCoverRed', x4, y)
 addAnimationByPrefix('sustainred', 'red', 'holdCoverRed', 24, false)
 addAnimationByPrefix('sustainred', 'final', 'holdCoverEndRed', 24, false)
 addAnimationByPrefix('sustainred', 'green', 'falseanim', 24, true)
 setObjectCamera('sustainred', 'camOther')
 setProperty('sustainred.visible', false)
 addLuaSprite('sustainred', true) 
 end
 
  if downscroll then
 
 y = 450
 end
 
 if middlescroll then
 
 x = 300
 
 x2 = 420
 
 x3 = 530
 
 x4 = 630
  end
  
  if middlescroll and downscroll then
  
  x = 300
 
 x2 = 420
 
 x3 = 530
 
 x4 = 630
 
 y = 450
 end
 
function goodNoteHit(id, direction, noteType, isSustainNote)

if direction == 0 and isSustainNote then
 objectPlayAnimation('sustainpurple', 'purple', true)
 setProperty('sustainpurple.visible', true)
  end
  
if direction == 1 and isSustainNote then
 objectPlayAnimation('sustainblue', 'blue', true)
 setProperty('sustainblue.visible', true)
 end 
 
 if direction == 2 and isSustainNote then
 objectPlayAnimation('sustaingreen', 'green', true)
 setProperty('sustaingreen.visible', true)
   end
  
  if direction == 3 and isSustainNote then
 objectPlayAnimation('sustainred', 'red', true)
 setProperty('sustainred.visible', true)
   end
 end

function onUpdate()

 setProperty('sustainpurple.x', defaultPlayerStrumX0 - 110)
    setProperty('sustainpurple.y', defaultPlayerStrumY0 - 100)

    setProperty('sustainblue.x', defaultPlayerStrumX1 - 110)
    setProperty('sustainblue.y', defaultPlayerStrumY1 - 100)

    setProperty('sustaingreen.x', defaultPlayerStrumX2 - 110)
    setProperty('sustaingreen.y', defaultPlayerStrumY2 - 100)

    setProperty('sustainred.x', defaultPlayerStrumX3 - 110)
    setProperty('sustainred.y', defaultPlayerStrumY3 - 100)

     if getProperty('sustainpurple.animation.curAnim.finished') and getProperty('sustainpurple.animation.curAnim.name') == 'purple' then
  objectPlayAnimation('sustainpurple', 'final', true)
  end
  
  if getProperty('sustainblue.animation.curAnim.finished') and getProperty('sustainblue.animation.curAnim.name') == 'blue' then
  objectPlayAnimation('sustainblue', 'final', true)
  end
  
  if getProperty('sustaingreen.animation.curAnim.finished') and getProperty('sustaingreen.animation.curAnim.name') == 'green' then
  objectPlayAnimation('sustaingreen', 'final', true)
  end
  
  if getProperty('sustainred.animation.curAnim.finished') and getProperty('sustainred.animation.curAnim.name') == 'red' then
  objectPlayAnimation('sustainred', 'final', true)
  end
  
   if getProperty('sustainblue.animation.curAnim.finished') then
   setProperty('sustainblue.visible', false)
     end
     if getProperty('sustainpurple.animation.curAnim.finished') then
   setProperty('sustainpurple.visible', false)
   end
    if getProperty('sustaingreen.animation.curAnim.finished') then
    setProperty('sustaingreen.visible', false)
 end
    if getProperty('sustainred.animation.curAnim.finished') then
    setProperty('sustainred.visible', false)
   end
 end

function onTweenCompleted(n)
  if n == 'purple' then
        setProperty('sustainpurple.visible', false)
        end
   
  if n == 'blue' then
        setProperty('sustainblue.visible', false)
     end
  
  if n == 'green' then
        setProperty('sustaingreen.visible', false)
     end
   
   if n == 'red' then
         setProperty('sustainred.visible', false)
         end
   end