local storage = 1344
local raids = {
	"Barbarian",
	"Demodras",
	"Dryads",
	"Elfs",
	"Fernfang",
	"Ferumbras",
	"Ghazbaran",
	"grynch clan goblin",
	"halloweenhare",
	"Hornedfox",
	"Morgaroth",
	"Necropharus",
	"Nomad",
	"OrcsThais",
	"Orshabaal",
	"Pirates",
	"Quara",
	"Rats",
	"Scarabs",
	"The Old Widow",
	"Undead Jester",
	"UndeadDarashia"
}
function onThink(interval, lastExecution, thinkInterval)
	if getGlobalStorageValue(storage) == -1 or getGlobalStorageValue(storage) < os.time() then
		executeRaid(raids[math.random(1, #raids)])
		setGlobalStorageValue(storage, os.time() + 9 * 60 * 60)
	end
	return TRUE
end