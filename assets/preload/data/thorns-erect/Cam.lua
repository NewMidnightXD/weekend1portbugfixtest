function onUpdate(elapsed)
if mustHitSection then
triggerEvent('Camera Follow Pos', 750, 550)
else
triggerEvent('Camera Follow Pos', 550, 500)
end
end