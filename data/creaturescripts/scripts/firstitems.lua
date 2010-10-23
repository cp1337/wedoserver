  local commonItems = {
  -- ITEMS ALL VOCS RECEIVE
  {itemid=2120, count=1}, -- rope
  {itemid=2160, count=1}, -- cristal coin
  {itemid=5710, count=1}, -- shovel
  {itemid=2463, count=1}, -- plate armor
  {itemid=2647, count=1}, -- plate legs
  {itemid=2457, count=1}, -- steel helmet
  {itemid=2643, count=1}, -- leather boots
  {itemid=2525, count=1}, -- dwarven shield
}

local firstItems = {
  { -- SORC ITEMS
    {itemid=2190, count=1}, -- wand of vortex
  },
  { -- DRUID ITEMS
    {itemid=2182, count=1}, -- snakebite rod
  },
  { -- PALADIN ITEMS
    {itemid=2389, count=10}, -- spear
  },
  { -- KNIGHT ITEMS
    {itemid=2383, count=1}, -- spike sword
    {itemid=2423, count=1}, -- clerical mace
    {itemid=2428, count=1}, -- orcish axe
  }
}

for _, items in ipairs(firstItems) do
  for _, item in ipairs(commonItems) do
    table.insert(items, item)
  end
end

function onLogin(cid)
  if getPlayerGroupId(cid) < 2 then
    local hasReceivedFirstItems = getPlayerStorageValue(cid, 67708)

    if hasReceivedFirstItems == -1 then
      --[[local backpack = ]]doPlayerAddItem(cid, 1988, 1)

      local giveItems = firstItems[getPlayerVocation(cid)]

      if giveItems ~= nil then
        for _, v in ipairs(giveItems) do
          --doAddContainerItem(backpack, v.itemid, v.count or 1)
          doPlayerAddItem(cid, v.itemid, v.count or 1)
        end

        setPlayerStorageValue(cid, 67708, 1)  
      end
    end
  end
  return TRUE
end 