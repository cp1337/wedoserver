local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}


function onCreatureAppear(cid)                  npcHandler:onCreatureAppear(cid)                        end
function onCreatureDisappear(cid)               npcHandler:onCreatureDisappear(cid)                     end
function onCreatureSay(cid, type, msg)  npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                      npcHandler:onThink()                                            end


function creatureSayCallback(cid, type, msg)
if(not npcHandler:isFocused(cid)) then
return false
end
local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid

if msgcontains(msg,'oracle') then
selfSay('It\'s in the academy, just above {Seymour}. Go there once you are level 8 to leave this place.', cid)

elseif msgcontains(msg,'seymour') then
selfSay('He sticks his nose too much in books.', cid)

elseif msgcontains(msg,'cipfried') then
selfSay('I\'m not what you\'d call a \'believer\'.', cid)

elseif msgcontains(msg,'tom') then
selfSay('Yep.', cid)

elseif msgcontains(msg,'tanner') then
selfSay('That\'s my job. It can be dirty at times but it provides enough income for my living.', cid)

elseif msgcontains(msg,'corpses') then
selfSay('I\'m buying fresh {corpses} of rats, rabbits and wolves. I don\'t buy half-decayed ones. If you have any for sale, {trade} with me.', cid)

elseif msgcontains(msg,'monster') then
selfSay('Good monsters to start with are rats. They live in the {sewers} under the village of {Rookgaard}.', cid)

elseif msgcontains(msg,'sewers') then
selfSay('The nearest sewer entrance is just to the right of this building.', cid)

elseif msgcontains(msg,'corpse') then
selfSay('I\'m buying fresh {corpses} of rats, rabbits and wolves. I don\'t buy half-decayed ones. If you have any for sale, {trade} with me.', cid)

elseif msgcontains(msg,'sewer') then
selfSay('The nearest sewer entrance is just to the right of this building.', cid)

elseif msgcontains(msg,'troll') then
selfSay('Troll leather stinks. Can\'t use it.', cid)

elseif msgcontains(msg,'orc') then
selfSay('I don\'t buy orcs. Their skin is too scratchy.', cid)

elseif msgcontains(msg,'dallheim') then
selfSay('He\'s okay.', cid)

elseif msgcontains(msg,'Amber') then
selfSay('Now that\'s an interesting woman.', cid)

elseif msgcontains(msg,'rookgaard') then
selfSay('This island has its own problems, but all in all it\'s a decent place to live.', cid)

elseif msgcontains(msg,'main') then
selfSay('You can go there once you are level 8 and have talked to the {oracle}.', cid)

elseif msgcontains(msg,'mainland') then
selfSay('You can go there once you are level 8 and have talked to the {oracle}.', cid)

elseif msgcontains(msg,'obi') then
selfSay('He is such a hypocrite.', cid)

elseif msgcontains(msg,'dixi') then
selfSay('She buys my fine leather clothes.', cid)

elseif msgcontains(msg,'lily') then
selfSay('She always comes and preaches about how one should not wear animal skin.', cid)

elseif msgcontains(msg,'al dee') then
selfSay('He\'s an apple polisher.', cid)

elseif msgcontains(msg,'wares') then
selfSay('I\'m buying fresh {corpses} of rats, rabbits and wolves. I don\'t buy half-decayed ones. If you have any for sale, {trade} with me.', cid)

elseif msgcontains(msg,'job') then
selfSay('I\'m the local {tanner}. I buy fresh animal {corpses}, tan them, and convert them into fine leather clothes which I then sell to {merchants}.', cid)

elseif msgcontains(msg,'merchant') then
selfSay('{Dixi} and {Lee\'Delle} sell my leather clothes in their shops.', cid)

elseif msgcontains(msg,'merchants') then
selfSay('{Dixi} and {Lee\'Delle} sell my leather clothes in their shops.', cid)

elseif msgcontains(msg,'lee\'delle') then
selfSay('Her nose is a little high in the air, I think. She never shakes my hand.', cid)

elseif msgcontains(msg,'weapon') then
selfSay('Nope, sorry, don\'t sell that. Ask {Obi} or {Lee\'Delle}.', cid)

elseif msgcontains(msg,'shields') then
selfSay('Nope, sorry, don\'t sell that. Ask {Dixi} or {Lee\'Delle}.', cid)

elseif msgcontains(msg,'willie') then
selfSay('I kinda like him. At least he says what he thinks.', cid)

elseif msgcontains(msg,'billy') then
selfSay('He\'s a better cook than his cousin {Willie}, actually.', cid)

elseif msgcontains(msg,'trade') then
selfSay('Sure, check what I buy.', cid)

elseif msgcontains(msg,'norma') then
selfSay('I like her beer.', cid)

elseif msgcontains(msg,'human') then
selfSay('Are you crazy?!', cid)
npcHandler:releaseFocus(cid)

end
return TRUE
end

function thinkCallback()
talk = math.random(1,1000)
        if talk == 1 then
                doCreatureSay(getNpcCid(), "Oh yeah, I'm also interested in wolf paws and bear paws.", TALKTYPE_YELL)
        elseif talk == 2 then
                doCreatureSay(getNpcCid(), "Also buying minotaur leather.", TALKTYPE_YELL)
        elseif talk == 3 then
                doCreatureSay(getNpcCid(), "Buying fresh corpses of rats, rabbits and wolves.", TALKTYPE_YELL)
        end
return TRUE
end

npcHandler:setCallback(CALLBACK_ONTHINK, thinkCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())