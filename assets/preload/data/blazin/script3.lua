local allowCountdown = false

function onEndSong()
    if isStoryMode and not seenCutscene then
        startVideo('blazinCutscene')
        seenCutscene = true
        return Function_Stop
    end
    return Function_Continue
end
