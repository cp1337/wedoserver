function onStepIn(cid, item,pos)

-- Start tree removal set
StartTreePos = {x = 33079, y = 31014, z = 2, stackpos=1} --- Coodenada da �rvore que bloqueia a entrada pra o Demon Oak, � obrigatoriamente que seja igual � coordenada do arquivo dotile.lua.
StartTreeChk = getThingfromPos(StartTreePos)
-- end of check

if isPlayer(cid) == TRUE then
doRemoveItem(StartTreeChk.uid) 
end
return TRUE
end