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
        
if (msgcontains(msg,'yes') or msgcontains(msg,'student')) and talkState[talkUser] ~= 1 and talkState[talkUser] ~= 4 and talkState[talkUser] ~= 5 and talkState[talkUser] ~= 6 and talkState[talkUser] ~= 8 then
selfSay('Brilliant! We need fine adventurers like you! If you are ready to learn, just ask me for a {lesson}. You can always ask for the differently coloured words - such as {this} one - to continue the lesson.', cid)
talkState[talkUser] = 3

elseif msgcontains(msg,'this') and talkState[talkUser] == 3 then
selfSay('Yes, you got it. Ask me for a {lesson} anytime.', cid)

elseif msgcontains(msg,'lesson') and talkState[talkUser] == 3 then
selfSay('Oh, which lesson did you want to attend again? Was it {Rookgaard}, {fighting}, {equipment}, {citizens}, the {academy} or the {oracle}?', cid)
talkState[talkUser] = 1

elseif msgcontains(msg,'rookgaard') and talkState[talkUser] == 1 then
selfSay('Rookgaard is the name of this {village} as well as of the whole {island}. It belongs to the kingdom of {Thais}, in our world which is called {Tibia}.', cid)

elseif msgcontains(msg,'fighting') and talkState[talkUser] == 1 then
selfSay('You have to fight {monsters} to train your {skills} and {level}. If you lose {health}, eat {food} to regain it or use a {potion}.', cid)

if msgcontains(msg,' billy') then
selfSay('Billy is {Willie}\'s cousin, but he has his farm on the {premium} side of the village.', cid)

elseif msgcontains(msg,'norma') then
selfSay('Norma has recently opened a bar here meaning she sells drinks and snacks. Nothing of importance to you, young student.', cid)

elseif msgcontains(msg,'willie') then
selfSay('Willie is a fine farmer, although he is short-tempered. He sells and buys {food}.', cid)

elseif msgcontains(msg,'food') and talkState[talkUser] == 1 then
selfSay('Many monsters, such as rabbits or deer, are excellent food providers. You can also buy food from {Willie} or {Billy}, the farmers.', cid)

elseif msgcontains(msg,'tibia') and talkState[talkUser] == 1 then
selfSay('The world of Tibia is very large with tons of places to explore. Vast deserts, Caribbean islands, deep jungles, green meadows and jagged mountains await you!', cid)

elseif msgcontains(msg,'thais') and talkState[talkUser] == 1 then
selfSay('The city of Thais is reigned by King Tibianus. Of course, there are many other cities but you will learn about them later.', cid)

elseif msgcontains(msg,'oracle') and talkState[talkUser] == 1 then
selfSay('The oracle is a mysterious being just upstairs. It will bring you to the {Island} {of} {Destiny} to choose your {vocation} once you are level 8.', cid)

elseif msgcontains(msg,'vocation') and talkState[talkUser] == 1 then
selfSay('{knights}, {paladins}, {sorcerers} and {druids}. You can choose your vocation once you are level 8 and have talked to the {oracle}.', cid)

elseif msgcontains(msg,'citizens') and talkState[talkUser] == 1 then
selfSay('Most of the citizens here are {merchants}. You can give me the name of any non-player character and I will tell you something about him or her.', cid)

elseif msgcontains(msg,'merchants') and talkState[talkUser] == 1 then
selfSay('Merchants buy and sell goods. Just ask them for a {trade} to see what they offer or buy from you.', cid)

elseif msgcontains(msg,'trade') and talkState[talkUser] == 1 then
selfSay('I personally don\'t have anything to trade, but you can ask {merchants} for a trade. That will open a window where you can see their offers and the things they buy from you.', cid)

elseif msgcontains(msg,'knights') and talkState[talkUser] == 1 then
selfSay('Knights are strong melee fighters. You will learn all about them once you are level 8 and reached the Island of {Destiny}.', cid)

elseif msgcontains(msg,'destiny') then
if getPlayerStorageValue(cid,48990) < 1 then
selfSay('Shall I try and take a guess at your destiny?', cid)
talkState[talkUser] = 4
elseif getPlayerStorageValue(cid,48990) == 1 then
selfSay('Well, like I told you before, I really think you got that spirit of a druid in you. But of course it\'s completely up to you!', cid)
talkState[talkUser] = 1
elseif getPlayerStorageValue(cid,48990) == 2 then
selfSay('Well, like I told you before, I really think you got that spirit of a sorcerer in you. But of course it\'s completely up to you!', cid)
talkState[talkUser] = 1
elseif getPlayerStorageValue(cid,48990) == 3 then
selfSay('Well, like I told you before, I really think you got that spirit of a knight in you. But of course it\'s completely up to you!', cid)
talkState[talkUser] = 1
elseif getPlayerStorageValue(cid,48990) == 4 then
selfSay('Well, like I told you before, I really think you got that spirit of a paladin in you. But of course it\'s completely up to you!', cid)
talkState[talkUser] = 1
end

elseif msgcontains(msg,'yes') and talkState[talkUser] == 4 then
local voa = math.random(1,4)
if voa == 1 then
selfSay('Hmmm, let me look at you. You have an aura of great wisdom and may have healing hands as well as a sense for the powers of nature - I think you\'re a natural born druid!', cid)
elseif voa == 2 then
selfSay('Hmmm, let me look at you. You got that intelligent sparkle in your eyes and you\'d love to handle great power - that must be a future sorcerer!', cid)
elseif voa == 3 then
selfSay('Hmmm, let me look at you. Strong and sturdy, with a determined look in your eyes - no doubt the knight profession would be suited for you!', cid)
elseif voa == 4 then
selfSay('Hmmm, let me look at you. Such a lean and swift fighter you are - I can imagine you really well with a bow - I think you\'d make a tremendous paladin!', cid)
end
talkState[talkUser] = 1
setPlayerStorageValue(cid, 48990,voa)

elseif msgcontains(msg,'paladins') and talkState[talkUser] == 1 then
selfSay('Paladins are swift distance fighters. You will learn all about them once you are level 8 and reached the Island of {Destiny}.', cid)

elseif msgcontains(msg,'sorcerers') and talkState[talkUser] == 1 then
selfSay('Sorcerers are talented elemental magicians. You will learn all about them once you are level 8 and reached the Island of {Destiny}.', cid)

elseif msgcontains(msg,'druids') and talkState[talkUser] == 1 then
selfSay('Druids are nature magic users and great healers. You will learn all about them once you are level 8 and reached the Island of {Destiny}.', cid)

elseif msgcontains(msg,'monsters') and talkState[talkUser] == 1 then
selfSay('Good monsters to start hunting are {rats}. They live in the {sewers} below the village.', cid)

elseif msgcontains(msg,'rats') and talkState[talkUser] == 1 then
selfSay('To attack a rat, simply click on it in your battle list. Make sure that you have proper {equipment}, though! Also, I give you 2 gold coins for each {dead} {rat}.', cid)

elseif msgcontains(msg,'sewers') and talkState[talkUser] == 1 then
selfSay('One entrance to the sewers is south of this {academy}. Look for a sewer grate, then use it to climb down.', cid)

elseif msgcontains(msg,'academy') and talkState[talkUser] == 1 then
selfSay('The academy is the building you are standing in. We have a {library}, a {training} centre, a {bank} and the room of the {oracle}.', cid)

elseif msgcontains(msg,'library') and talkState[talkUser] == 1 then
selfSay('There are many books in the bookcases around you, unless some naughty kids stole them again. Read them for more and detailed information.', cid)

elseif msgcontains(msg,'training') and talkState[talkUser] == 1 then
selfSay('When you have the time, please visit our training centre downstairs. \'Look\' at the blackboards to read some important advice. Oh, you need a {key} for that!', cid)

elseif msgcontains(msg,'bank') and talkState[talkUser] == 1 then
selfSay('In a bank you can deposit your earned gold coins safely. Just go downstairs to {Paulie} and ask him to {deposit} your money.', cid)

elseif msgcontains(msg,'paulie') and talkState[talkUser] == 1 then
selfSay('Yes, Paulie is very important. He is the local {bank} clerk.', cid)

elseif msgcontains(msg,'deposit') and talkState[talkUser] == 1 then
selfSay('Yes, depositing your money will keep it safe, so it is a good idea to store it in the bank. Of course, you can always withdraw it again.', cid)

elseif msgcontains(msg,'equipment') and talkState[talkUser] == 1 then
selfSay('Don\'t go hunting without proper equipment. You need at least a suitable {weapon}, {armor}, {shield}, {rope} and {shovel}. A {torch} is also good as well as {legs}, a {helmet} and {shoes}.', cid)

elseif msgcontains(msg,'weapon') and talkState[talkUser] == 1 then
selfSay('The starter weapon, a club, won\'t get you far. You should earn some {money} and buy a better weapon such as a sabre from {Obi}\'s or {Lee\'Delle}\'s shop. Simply ask for a {trade}.', cid)

elseif msgcontains(msg,'money') and talkState[talkUser] == 1 then
selfSay('Make money by killing {monsters} and picking up their {loot}. You can sell many of the things they carry.', cid)

elseif msgcontains(msg,'loot') and talkState[talkUser] == 1 then
selfSay('Once a monster is dead, you can select \'Open\' on the {corpse} to check what\'s inside. Sometimes they carry {money} or other items which you can sell to {merchants}.', cid)

elseif msgcontains(msg,'corpse') and talkState[talkUser] == 1 then
selfSay('You can even sell some corpses! For example, you can sell fresh dead rats to {Tom} the tanner or me. He also buys other dead creatures, just ask him for a {trade}.', cid)

elseif msgcontains(msg,'tom') and talkState[talkUser] == 1 then
selfSay('Tom the tanner buys fresh {corpses}, minotaur leather and paws. Always good to make some {money} if you can carry the corpses there fast enough.', cid)

elseif msgcontains(msg,'obi') and talkState[talkUser] == 1 then
selfSay('Obi sells and buys {weapons}. You can find his shop south of the academy.', cid)

elseif msgcontains(msg,'lee\'delle') and talkState[talkUser] == 1 then
selfSay('Lee\'Delle\'s shop is in the western part of town, on the {premium} side. She sells everything cheaper.', cid)

elseif msgcontains(msg,'premium') and talkState[talkUser] == 1 then
selfSay('Paying for your Tibia account will turn it into a premium account. This means access to more areas and functions of the game as well as other neat features.', cid)

elseif msgcontains(msg,'dead rat') then
selfSay('Have you brought at least a one dead rat to me to pick up your reward?', cid)
talkState[talkUser] = 6

elseif msgcontains(msg,'no') and talkState[talkUser] == 6 then
selfSay('Go and find some rats to kill!', cid)
talkState[talkUser] = 0

elseif msgcontains(msg,'yes') and talkState[talkUser] == 6 then
if getPlayerItemCount(cid, 2813) >= 1 then
local coin = getPlayerItemCount(cid, 2813) * 2
selfSay('Thank you! Here is your reward.', cid)
doPlayerRemoveItem(cid, 2813, getPlayerItemCount(cid, 2813))
doPlayerAddItem(cid,2148,coin)
talkState[talkUser] = 0
else
selfSay('HEY! You don\'t have one! Stop playing tricks on me or I\'ll give you some extra work!', cid)
talkState[talkUser] = 0
end

elseif msgcontains(msg,'armor') and talkState[talkUser] == 1 then
selfSay('The starter armor, a coat, does not protect you well. First of all, earn some money and try to get a sturdy leather armor from {Dixi}\'s or {Lee\'Delle}\'s shop. Simply ask for a {trade}.', cid)

elseif msgcontains(msg,'dixi') and talkState[talkUser] == 1 then
selfSay('Dixi sells and buys {armors}, {shields}, {helmets} and {legs}. You can find her shop south of the academy, just go up the stairs in {Obi}\'s shop.', cid)

elseif msgcontains(msg,'shield') and talkState[talkUser] == 1 then
selfSay('I fear you have to buy your first shield by yourself. A wooden shield from {Dixi} or {Lee\'Delle} is a good choice.', cid)

elseif msgcontains(msg,'shields') and talkState[talkUser] == 1 then
selfSay('I fear you have to buy your first shield by yourself. A wooden shield from {Dixi} or {Lee\'Delle} is a good choice.', cid)

elseif msgcontains(msg,'weapons') and talkState[talkUser] == 1 then
selfSay('The starter weapon, a club, won\'t get you far. You should earn some {money} and buy a better weapon such as a sabre from {Obi}\'s or {Lee\'Delle}\'s shop. Simply ask for a {trade}.', cid)

elseif msgcontains(msg,'armors') and talkState[talkUser] == 1 then
selfSay('The starter armor, a coat, does not protect you well. First of all, earn some money and try to get a sturdy leather armor from {Dixi}\'s or {Lee\'Delle}\'s shop. Simply ask for a {trade}.', cid)

elseif msgcontains(msg,'helmet') and talkState[talkUser] == 1 then
selfSay('A sturdy leather helmet is a good choice for a beginner. You can either buy it from {Dixi} and {Lee\'Delle}, or, once you are strong enough, {loot} them from {trolls}.', cid)

elseif msgcontains(msg,'helmets') and talkState[talkUser] == 1 then
selfSay('A sturdy leather helmet is a good choice for a beginner. You can either buy it from {Dixi} and {Lee\'Delle}, or, once you are strong enough, {loot} them from {trolls}.', cid)

elseif msgcontains(msg,'legs') and talkState[talkUser] == 1 then
selfSay('Leather legs might be a good basic protection. You can buy them from {Dixi} or {Lee\'Delle}. Or, once you are strong enough, hunt {trolls}. They sometimes carry them in their {loot}.', cid)

elseif msgcontains(msg,'shoes') and talkState[talkUser] == 1 then
selfSay('Leather boots are basic shoes which will protect you well. You can either buy them from {Dixi} and {Lee\'Delle}, or, once you are strong enough, {loot} them from {trolls}.', cid)

elseif msgcontains(msg,'torch') and talkState[talkUser] == 1 then
selfSay('A torch will provide you with light in dark {dungeons}. \'Use\' it to light it. You can buy them from {Al} {Dee} or {Lee\'Delle}.', cid)

elseif msgcontains(msg,'rope') and talkState[talkUser] == 1 then
selfSay('You definitely need a rope to progress in dungeons, else you might end up stuck. Buy one from {Al} {Dee} or {Lee\'Delle}.', cid)

elseif msgcontains(msg,'shovel') and talkState[talkUser] == 1 then
selfSay('A shovel is needed to dig some {dungeon} entrances open. \'Use\' it on a loose stone pile to make a hole large enough to enter.', cid)

elseif msgcontains(msg,'dungeon') and talkState[talkUser] == 1 then
selfSay('You should not descend into dungeons without proper {equipment}. Once you are all prepared, ask the bridge {guards} for suitable {monsters}.', cid)

elseif msgcontains(msg,'guards') and talkState[talkUser] == 1 then
selfSay('The guards {Dallheim} and {Zerbrus} protect our village from {monsters} trying to enter. They also mark useful {dungeon} locations on your map.', cid)

elseif msgcontains(msg,'dallheim') then
talkState[talkUser] = 1
selfSay('He\'s the guard on the north {bridge} and a great fighter. He can show you {monster} locations. Just ask him about monsters!', cid)

elseif msgcontains(msg,'bridge') and talkState[talkUser] == 1 then
selfSay('There is a bridge to the north and one to the west which lead outside the village. You should only leave once you are well {equipped} and at least level 2.', cid)

elseif msgcontains(msg,'equipped') and talkState[talkUser] == 1 then
selfSay('Don\'t go hunting without proper equipment. You need at least a suitable {weapon}, {armor}, {shield}, {rope} and {shovel}. A {torch} is also good as well as {legs}, a {helmet} and {shoes}.', cid)

elseif msgcontains(msg,'zerbrus') and talkState[talkUser] == 1 then
selfSay('He\'s the guard on the west {bridge} and a great fighter. He can show you {monster} locations. Just ask him about monsters!', cid)

elseif msgcontains(msg,'trolls') and talkState[talkUser] == 1 then
selfSay('Trolls are quite nasty monsters which you shouldn\'t face before level 3 or 4 depending on your {equipment}. Ask the bridge {guards} for their locations!', cid)

elseif msgcontains(msg,'corpses') and talkState[talkUser] == 1 then
selfSay('You can even sell some corpses! For example, you can sell fresh dead rats to {Tom} the tanner or me. He also buys other dead creatures, just ask him for a {trade}.', cid)

elseif msgcontains(msg,'skills') and talkState[talkUser] == 1 then
selfSay('The more you fight with a weapon, the better will be your skill handling this weapon. Don\'t worry about that right now though, this will become important once you have a {vocation}.', cid)

elseif msgcontains(msg,'level') and talkState[talkUser] == 1 then
selfSay('Once you gained enough experience for a level, you will advance. This means - among other things - more {health} points, a faster walking speed and more strength to carry things.', cid)

elseif msgcontains(msg,'health') and talkState[talkUser] == 1 then
selfSay('Your current health is shown by the red bar on the right side. {Death} awaits you if it goes down to zero.', cid)

elseif msgcontains(msg,'death') and talkState[talkUser] == 1 then
selfSay('Dying in Tibia is painful, so try to avoid it. You will lose part of your {experience} points and also equipment. Make sure your {health} always stays up!', cid)

elseif msgcontains(msg,'experience') and talkState[talkUser] == 1 then
selfSay('You gain experience when fighting {monsters}. You can take a look at your skill window to check your progress.', cid)

elseif msgcontains(msg,'academy') then
talkState[talkUser] = 1
selfSay('The academy is the building you are standing in. We have a {library}, a {training} centre, a {bank} and the room of the {oracle}.', cid)

elseif msgcontains(msg,'fuck') then
if getPlayerSex(cid)== 0 then
selfSay('For this remark I will wash your mouth with soap, young lady!', cid)
doSendMagicEffect(getCreaturePosition(cid),7)
else
doSendMagicEffect(getCreaturePosition(cid),7)
selfSay('For this remark I will wash your mouth with soap, young man!', cid)
end

elseif msgcontains(msg,'student') and talkState[talkUser] == 1 then
selfSay('Well, I could give you valuable {lessons} or some general {hints} about the game, or a small {quest} if you\'re interested.', cid)

elseif msgcontains(msg,'island of destiny') then
selfSay('This is an island with vocation teachers. You can learn all about the different {vocations} there once you are level 8.', cid)

elseif msgcontains(msg,'quest') or msgcontains(msg,'mission') then
if getPlayerLevel(cid) > 3 then
selfSay('Well, I would like to send our king a little present but I do not have a suitable {box}. If you find a nice box, please bring it to me.', cid)
elseif getPlayerLevel(cid) < 4 then
selfSay('You are pretty inexperienced. I think killing rats is a suitable challenge for you. For each fresh {dead rat} I will give you two shiny coins of gold.', cid)
end

elseif msgcontains(msg,'job') and talkState[talkUser] == 1 then
selfSay('I\'m the master of this fine {academy}, giving {lessons} to my students.', cid)

elseif msgcontains(msg,'hints') and talkState[talkUser] == 1 then
selfSay('If you don\'t know the meaning of an icon on the right side, move the mouse cursor on it and wait a moment.', cid)

elseif msgcontains(msg,'amber') then
talkState[talkUser] = 1
selfSay('A traveller from the {main} continent. I wonder what brought her here. No one comes here of his own free will.', cid)

elseif msgcontains(msg,'main') and talkState[talkUser] == 1 then
selfSay('You can leave for mainland once you are level 8. To do so talk to the {oracle}.', cid)

elseif msgcontains(msg,'al dee') then
talkState[talkUser] = 1
selfSay('Al Dee has a general {equipment} store in the north-western part of the village. He sells useful stuff such as {ropes}.', cid)

elseif msgcontains(msg,'ropes') and talkState[talkUser] == 1 then
selfSay('You definitely need a rope to progress in dungeons, else you might end up stuck. Buy one from {Al} {Dee} or {Lee\'Delle}.', cid)

elseif msgcontains(msg,'box') and talkState[talkUser] == 1 then
selfSay('Do you have a suitable present box for me?', cid)
talkState[talkUser] = 8

elseif msgcontains(msg,'no') and talkState[talkUser] == 8 then
selfSay('HEY! You don\'t have one! Stop playing tricks on me or I\'ll give you some extra work!', cid)
talkState[talkUser] = 0

elseif msgcontains(msg,'yes') and talkState[talkUser] == 8 then
if getPlayerItemCount(cid, 1990) >= 1 then
selfSay('THANK YOU! Here is a helmet that will serve you well.', cid)
doPlayerAddItem(cid,2480,1)
doPlayerRemoveItem(cid, 1990, 1)
else
selfSay('HEY! You don\'t have one! Stop playing tricks on me or I\'ll give you some extra work!', cid)
end


elseif msgcontains(msg,'key') then
selfSay('Do you want to buy the Key to Adventure for 5 gold coins?', cid)
talkState[talkUser] = 5

elseif msgcontains(msg,'no') and talkState[talkUser] == 5 then
selfSay('As you wish.', cid)
talkState[talkUser] = 0

elseif msgcontains(msg,'yes') and talkState[talkUser] == 5 then
if getPlayerMoney(cid) >= 5 then
doPlayerRemoveMoney(cid, 5)
local key = doCreateItemEx(2088)
doSetItemActionId(key, 4601)
doPlayerAddItemEx(cid,key)
selfSay('Here you are.', cid)
talkState[talkUser] = 0
else
selfSay('You don\'t have enough money.', cid)
talkState[talkUser] = 0
end
else
selfSay('Only nonsense on your mind, eh?', cid)
talkState[talkUser] = 1
end

return TRUE
end

function thinkCallback()
talk = math.random(1,200)
        if talk == 1 then
                doCreatureSay(getNpcCid(), "Feeling lost? Ask me for help!", TALKTYPE_YELL)
        elseif talk == 2 then
                doCreatureSay(getNpcCid(), "Newcomers - visit me! I'll answer your questions!", TALKTYPE_YELL)
        elseif talk == 3 then
                doCreatureSay(getNpcCid(), "Get some training in the academy!", TALKTYPE_YELL)
        end
return TRUE
end
end
npcHandler:setCallback(CALLBACK_ONTHINK, thinkCallback)
npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())