local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)        end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)        end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)    end
function onThink()                npcHandler:onThink()                end

-- ASSASSIN START --
function AssassinFirst(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    
        if getPlayerItemCount(cid,2498) >= 2 then
        if doPlayerRemoveItem(cid,2498,2) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,5884,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)
        end
    end


function AssassinSecond(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end


    
        if getPlayerItemCount(cid,2475) >= 4 then
        if doPlayerRemoveItem(cid,2475,4) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,5885,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)
        end
    end

function Assassinthird(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end


    

        if getPlayerItemCount(cid,2195) >= 1 then
        if doPlayerRemoveItem(cid,2195,1) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,5891,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)
        end

    end

function Assassinroom(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    

        if getPlayerItemCount(cid,2392) >= 3 then
        if doPlayerRemoveItem(cid,2392,3) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,5904,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)

   end

end

function Assassinfifth(cid, message, keywords, parameters, node)

    if(not npcHandler:isFocused(cid)) then
        return false
    end

    

        if getPlayerItemCount(cid,5879) >= 10 then
        if doPlayerRemoveItem(cid,5879,10) then
            npcHandler:say('Here is your item!', cid)
            doPlayerAddItem(cid,5886,1)
        end
        else
            npcHandler:say('You don\'t have these items!', cid)

   end

end

-- ASSASSIN END --

keywordHandler:addKeyword({'help'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I can exchange 2 royal helmets for fighting spirit, 4 warrior helmets for warrior\'s sweat, 3 fire swords for magic sulphur and boots of haste for enchanted chicken wing."})

local node1 = keywordHandler:addKeyword({'royal helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to trade 2 royal helmets for a fighting spirit?'})
    node1:addChildKeyword({'yes'}, AssassinFirst, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node1:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

local node2 = keywordHandler:addKeyword({'warrior helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to trade 4 warrior helmets for warrior\'s sweat?'})
    node2:addChildKeyword({'yes'}, AssassinSecond, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node2:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

local node6 = keywordHandler:addKeyword({'boots of haste'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to trade boots of haste for a enchanted chicken wing?'})
    node6:addChildKeyword({'yes'}, Assassinthird, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node6:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

local node4 = keywordHandler:addKeyword({'fire sword'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to trade your 3 fire sword for magic sulphurs?'})
    node4:addChildKeyword({'yes'}, Assassinroom, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node4:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

local node3 = keywordHandler:addKeyword({'giant spider silk'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Do you want to trade 10 giant spider silks for some spool of yarn?'})
    node3:addChildKeyword({'yes'}, Assassinfifth, {npcHandler = npcHandler, onlyFocus = true, reset = true})
    node3:addChildKeyword({'no'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = 'Alright then. Come back when you got the neccessary items.', reset = true})

npcHandler:addModule(FocusModule:new())
