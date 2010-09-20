local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid)			end
function onCreatureDisappear(cid)			npcHandler:onCreatureDisappear(cid)			end
function onCreatureSay(cid, type, msg)			npcHandler:onCreatureSay(cid, type, msg)		end
function onThink()					npcHandler:onThink()					end
function creatureSayCallback(cid, type, msg)
	if(not npcHandler:isFocused(cid)) then
		return false
	end
	local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
	if(msgcontains(msg, 'beer')) then
		selfSay('Do you want to buy beer? Will pay only 2gp!', cid)
		talkState[talkUser] = 1
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 1) then
		if(doPlayerRemoveMoney(cid, 2) == TRUE) then
			doPlayerAddItem(cid, 2006, 3)
				selfSay('Here you are, this is you beer. You can also {order} something else or {buy} food.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
             end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] == 1) then
				selfSay('Ok then, maybe you want to {order} different drink or {buy} something to eat?', cid)
				talkState[talkUser] = 0
			     		 
return true
end
----------------------------------------
	if(msgcontains(msg, 'wine')) then
		selfSay('Do you want to buy wine? Will pay only 3gp!', cid)
		talkState[talkUser] = 2
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 2) then
		if(doPlayerRemoveMoney(cid, 3) == TRUE) then
			doPlayerAddItem(cid, 2006, 15)
				selfSay('Here you are, this is you wine. You can also {order} something else or {buy} food.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
		     end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] == 2) then
				selfSay('Ok then, maybe you want to {order} different drink or {buy} something to eat?', cid)
				talkState[talkUser] = 0	     
return true
end
----------------------------------------
	if(msgcontains(msg, 'milk')) then
		selfSay('Do you want to buy milk? Will pay only 4gp!', cid)
		talkState[talkUser] = 3
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 3) then
		if(doPlayerRemoveMoney(cid, 4) == TRUE) then
			doPlayerAddItem(cid, 2006, 6)
				selfSay('Here you are, this is you milk. You can also {order} something else or {buy} food.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
		    end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] == 3) then
				selfSay('Ok then, maybe you want to {order} different drink or {buy} something to eat?', cid)
				talkState[talkUser] = 0		
return true
end
----------------------------------------
	if(msgcontains(msg, 'lemonade')) then
		selfSay('Do you want to buy lemonade? Will pay only 2gp!', cid)
		talkState[talkUser] = 4
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 4) then
		if(doPlayerRemoveMoney(cid, 2) == TRUE) then
			doPlayerAddItem(cid, 2006, 5)
				selfSay('Here you are, this is you lemonade. You can also {order} something else or {buy} food.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
		     end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] == 4) then
			selfSay('Ok then, maybe you want to {order} different drink or {buy} something to eat?', cid)
			talkState[talkUser] = 0
return true
end
----------------------------------------
	if(msgcontains(msg, 'water')) then
		selfSay('Do you want to buy water? Will pay only 1gp!', cid)
		talkState[talkUser] = 5
	elseif(msgcontains(msg, 'yes') and talkState[talkUser] == 5) then
		if(doPlayerRemoveMoney(cid, 1) == TRUE) then
			doPlayerAddItem(cid, 2006, 1)
				selfSay('Here you are, this is you water. You can also {order} something else or {buy} food.', cid)
			else
				selfSay('Sorry, you don\'t have enough gold.', cid)
		end
	elseif(msgcontains(msg, 'no') and talkState[talkUser] == 5) then
			selfSay('Ok then, maybe you want to {order} different drink or {buy} something to eat?', cid)
			talkState[talkUser] = 0
	     end
return true
end
-- Storage IDs --
local citizen     = 22011


local newaddon    = 'Here you are, enjoy your brand new addon!'
local noitems        = 'You do not have all the required items.'
local noitems2    = 'You do not have all the required items or you do not have the first addon, which by the way, is a requirement for this addon.'
local already        = 'It seems you already have this addon, don\'t you try to mock me son!'
        
-- CITIZEN START --
function CitizenSecond(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    if isPremium(cid) then
    addon = getPlayerStorageValue(cid,citizen+1)
    if addon == -1 then
        if getPlayerItemCount(cid,5890) >= 100 and getPlayerItemCount(cid,5902) >= 50 and getPlayerItemCount(cid,2480) >= 1 then
        if doPlayerRemoveItem(cid,5890,100) and doPlayerRemoveItem(cid,5902,50) and doPlayerRemoveItem(cid,2480,1) then
            npcHandler:say('Here you are, enjoy your brand new addon!', cid)
             
            doSendMagicEffect(getCreaturePosition(cid), 13)
            doPlayerAddOutfit(cid, 128, 2)
            doPlayerAddOutfit(cid, 136, 2)
            setPlayerStorageValue(cid,citizen+1,1)
        end
        else
            npcHandler:say('You do not have all the required items.', cid)
        end
    else
        npcHandler:say('It seems you already have this addon, don\'t you try to mock me son!', cid)
    end
    end

end

keywordHandler:addKeyword({'addon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Ask about {Outfit}."})
keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What you do is that you type 'first citizen addon'. Assuming that you already collected all the required pieces, say 'yes' and voíla - you got yourself an addon!"})

local node1 = keywordHandler:addKeyword({'outfit'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Pretty, isn`t it? My friend Hanna taught me how to make it,\nbut I could help you with one if you like. What do you say?'})
    node1:addChildKeyword({'yes'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Okay, here we go, listen closely! I need a few things.., a basic {hat} of course,\nmaybe a legion helmet would do. Then about 100 chicken feathers... and 50 honeycombs as glue.\nThat`s it, come back to me once you gathered it!', reset = true})
    node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got all neccessary items. Meanwhile you maybe want to {order} some drink or {buy} food?', reset = true})
local node2 = keywordHandler:addKeyword({'hat'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Oh, you`re back already? Did you bring a legion helmet, 100 chicken feathers and 50 honeycombs?'})
    node2:addChildKeyword({'yes'}, CitizenSecond, {npcHandler = npcHandler, onlyFocus = true, text = 'Great job! That must have taken a lot of work. Okay, you put it like this... then glue like this... here!', reset = true})
    node2:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got all neccessary items.', reset = true})
	
	


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
