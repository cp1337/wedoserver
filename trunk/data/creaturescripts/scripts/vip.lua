-- [( Script edited by: DoidinMapper )] --
function onLogin(cid)
local pos = {x=32360, y=31782, z=7}
if vip.hasVip(cid) == TRUE then
if getPlayerStorageValue(cid,55555) ~= 1 then
setPlayerStorageValue(cid,55555,1)
end
elseif vip.hasVip(cid) ~= TRUE and vip.getVip(cid) ~= 0 then
if getPlayerStorageValue(cid,55555) == 1 then
doTeleportThing(cid, pos, TRUE)
doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Your VIP's over!")
doPlayerSendTextMessage(cid,22,"Your VIP's over!")
setPlayerPromotionLevel(cid, 1)
setPlayerStorageValue(cid,55555,2)
elseif getPlayerStorageValue(cid,55555) == -1 then
setPlayerStorageValue(cid,55555,2)
end
end
return TRUE
end