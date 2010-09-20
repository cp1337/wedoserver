monsters = {
        --["monste name"] = {["summon name"] = {pos = {x, y, z}, delay = milisegundos},
        ["The Axeorcist"] = {
                ["Menace"] = {pos = {x=33065, y=31035, z=3}, delay = 2000},
                ["Fatality"] = {pos = {x=33066, y=31035, z=3}, delay = 2000}
        },
        ["Fatality"] = {
                ["Coldheart"] = {pos = {x=33065, y=31035, z=3}, delay = 2000},
                ["Incineron"] = {pos = {x=33066, y=31035, z=3}, delay = 2000}
        },
        ["Incineron"] = {
                ["Coldheart"] = {pos = {x=33065, y=31035, z=3}, delay = 2000},
                ["Incineron"] = {pos = {x=33066, y=31035, z=3}, delay = 2000}
        },
        ["Incineron"] = {
                ["Dreadwing"] = {pos = {x=33065, y=31035, z=3}, delay = 2000},
                ["Doomhowl"] = {pos = {x=33066, y=31035, z=3}, delay = 2000}
        },
        ["Incineron"] = {
                ["Haunter"] = {pos = {x=33065, y=31035, z=3}, delay = 2000},
                ["The Dreadorian"] = {pos = {x=33066, y=31035, z=3}, delay = 2000}
        },
        ["The Dreadorian"] = {
                ["Rocko"] = {pos = {x=33065, y=31035, z=3}, delay = 2000},
                ["Tremorakl"] = {pos = {x=33066, y=31035, z=3}, delay = 2000},
                ["Tirecz"] = {pos = {x=33067, y=31035, z=3}, delay = 30000}
        }

}

function onDeath(cid, corpse, killer)
        local summons = monsters[getCreatureName(cid)]
        if summons then
                for i, v in pairs(summons) do
                        addEvent(doSummonCreature, v.delay, i, v.pos)
                end
        end
        return TRUE
end