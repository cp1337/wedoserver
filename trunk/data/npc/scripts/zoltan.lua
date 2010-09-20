local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)            npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end

    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
		
		if msgcontains(msg, 'yenny the gentle') and queststate == 1 then
        selfSay('Ah, Yenny the Gentle was one of the founders of the druid order called Crunors Caress, that has been originated in her hometown Carlin.')
        talk_state = 1
		elseif msgcontains(msg, 'crunors caress') and talk_state == 1 then
            selfSay('A quite undruidic order of druids they were, as far as we know. I have no more enlightening knowledge about them though.')
				setPlayerStorageValue(cid,6665,1)
                talk_state = 2
		elseif msgcontains(msg, 'no') and (talk_state >= 1 and talk_state <= 2) then
			selfSay('Good Bye. |PLAYERNAME|!')

			talk_state = 0
		end
	-- Place all your code in here. Remember that hi, bye and all that stuff is already handled by the npcsystem, so you do not have to take care of that yourself.
	return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())