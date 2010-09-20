function onStepIn(cid, item, pos, fromPosition)

	if item.uid == 60063 then
		local coin = getThingfromPos({x=33073,y=32589,z=13,stackpos=2})
		if coin.itemid == 2159 and coin.type >= 1 then
			doRemoveItem(coin.uid, 1)
			doSendMagicEffect({x=33073,y=32589,z=13}, CONST_ME_HITBYFIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33079,y=32589,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	elseif item.uid == 60065 then
		local coin = getThingfromPos({x=33098,y=32816,z=13,stackpos=2})
		if coin.itemid == 2159 and coin.type >= 1 then
			doRemoveItem(coin.uid, 1)
			doSendMagicEffect({x=33098,y=32816,z=13}, CONST_ME_HITBYFIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33093,y=32824,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	elseif item.uid == 60067 then
		local coin = getThingfromPos({x=33135,y=32682,z=12,stackpos=2})
		if coin.itemid == 2159 and coin.type >= 1 then
			doRemoveItem(coin.uid, 1)
			doSendMagicEffect({x=33135,y=32682,z=12}, CONST_ME_HITBYFIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33130,y=32683,z=12}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	elseif item.uid == 60069 then
		local coin = getThingfromPos({x=33161,y=32831,z=10,stackpos=2})
		if coin.itemid == 2159 and coin.type >= 1 then
			doRemoveItem(coin.uid, 1)
			doSendMagicEffect({x=33161,y=32831,z=10}, CONST_ME_HITBYFIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33156,y=32832,z=10}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	elseif item.uid == 60071 then
		local coin = getThingfromPos({x=33233,y=32692,z=13,stackpos=2})
		if coin.itemid == 2159 and coin.type >= 1 then
			doRemoveItem(coin.uid, 1)
			doSendMagicEffect({x=33233,y=32692,z=13}, CONST_ME_HITBYFIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33234,y=32687,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	elseif item.uid == 60073 then
		local coin = getThingfromPos({x=33240,y=32855,z=13,stackpos=2})
		if coin.itemid == 2159 and coin.type >= 1 then
			doRemoveItem(coin.uid, 1)
			doSendMagicEffect({x=33240,y=32855,z=13}, CONST_ME_HITBYFIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33246,y=32850,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	elseif item.uid == 60075 then
		local coin = getThingfromPos({x=33276,y=32552,z=14,stackpos=2})
		if coin.itemid == 2159 and coin.type >= 1 then
			doRemoveItem(coin.uid, 1)
			doSendMagicEffect({x=33276,y=32552,z=14}, CONST_ME_HITBYFIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33271,y=32553,z=14}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	elseif item.uid == 60077 then
		local coin = getThingfromPos({x=33293,y=32741,z=13,stackpos=2})
		if coin.itemid == 2159 and coin.type >= 1 then
			doRemoveItem(coin.uid, 1)
			doSendMagicEffect({x=33293,y=32741,z=13}, CONST_ME_HITBYFIRE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33299,y=32742,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
		end
	elseif item.uid == 60064 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33072,y=32589,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 60066 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33097,y=32815,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 60068 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33136,y=32683,z=12}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 60070 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33162,y=32832,z=10}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 60072 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33234,y=32693,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 60074 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33239,y=32856,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 60076 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33277,y=32553,z=14}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	elseif item.uid == 60078 then
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
			doTeleportThing(cid, {x=33292,y=32742,z=13}, FALSE)
			doSendMagicEffect(getCreaturePosition(cid), CONST_ME_TELEPORT)
	end
	return TRUE
end