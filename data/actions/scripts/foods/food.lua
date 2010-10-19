local FOODS, MAX_FOOD = {
	[2328] = {84, "Gulp."},  [2362] = {48, "Yum."}, [2666] = {180, "Munch."}, [2667] = {144, "Munch."},
	[2668] = {120, "Mmmm."}, [2669] = {204, "Munch."}, [2670] = {48, "Gulp."}, [2671] = {360, "Chomp."},
	[2672] = {720, "Chomp."}, [2673] = {60, "Yum."}, [2674] = {72, "Yum."}, [2675] = {156, "Yum."},
	[2676] = {96, "Yum."}, [2677] = {12, "Yum."}, [2678] = {216, "Slurp."}, [2679] = {12, "Yum."},
	[2680] = {24, "Yum."}, [2681] = {108, "Yum."}, [2682] = {240, "Yum."}, [2683] = {204, "Munch."},
	[2684] = {60, "Crunch."}, [2685] = {72, "Munch."}, [2686] = {108, "Crunch."}, [2687] = {24, "Crunch."},
	[2688] = {24, "Mmmm."}, [2689] = {120, "Crunch."}, [2690] = {72, "Crunch."}, [2691] = {96, "Crunch."},
	[2695] = {72, "Gulp."}, [2696] = {108, "Smack."}, [8112] = {108, "Urgh."}, [2769] = {60, "Crunch."}, [2787] = {108, "Crunch."},
	[2788] = {48, "Munch."}, [2789] = {264, "Munch."}, [2790] = {360, "Crunch."}, [2791] = {108, "Crunch."},
	[2792] = {72, "Crunch."}, [2793] = {144, "Crunch."}, [2794] = {36, "Crunch."}, [2795] = {432, "Crunch."},
	[2796] = {300, "Crunch."}, [5097] = {48, "Yum."}, [5678] = {96, "Gulp."}, [6125] = {96, "Mmmm."},
	[6278] = {120, "Mmmm."}, [6279] = {180, "Mmmm."}, [6393] = {144, "Mmmm."}, [6394] = {180, "Mmmm."},
	[6501] = {240, "Mmmm."}, [6541] = {72, "Gulp."}, [6542] = {72, "Gulp."}, [6543] = {72, "Gulp."},
	[6544] = {72, "Gulp."}, [6545] = {72, "Gulp."}, [6569] = {12, "Mmmm."}, [6574] = {60, "Mmmm."},
	[7158] = {300, "Munch."}, [7159] = {180, "Munch."}, [7372] = {0, "Yummy."}, [7373] = {0, "Yummy."},
	[7374] = {0, "Yummy."},  [7375] = {0, "Yummy."}, [7376] = {0, "Yummy."}, [7377] = {0, "Yummy."},
	[7963] = {720, "Munch."},  [8838] = {120, "Gulp."}, [8839] = {60, "Yum."}, [8840] = {12, "Yum."},
	[8841] = {12, "Urgh."}, [8842] = {84, "Munch."}, [8843] = {60, "Crunch."}, [8844] = {12, "Gulp."},
	[8845] = {60, "Munch."}, [8847] = {132, "Yum."}, [9114] = {60, "Crunch."}, [9005] = {88, "Slurp."}, 
	[7245] = {84, "Munch."}, [9996] = {0, "Slurp."},
	[10454] = {0, "Your head begins to feel better."}
}, 1200

function onUse(cid, item, fromPosition, itemEx, toPosition)
	if(item.itemid == 6280) then
		if(fromPosition.x == CONTAINER_POSITION) then
			fromPosition = getThingPosition(cid)
		end

		doCreatureSay(cid, getPlayerName(cid) .. " blew out the candle.", TALKTYPE_MONSTER)
		doTransformItem(item.uid, item.itemid - 1)

		doSendMagicEffect(fromPosition, CONST_ME_POFF)
		return true
	end

	local food = FOODS[item.itemid]
	if(food == nil) then
		return false
	end

	local size = food[1]
	if(getPlayerFood(cid) + size > MAX_FOOD) then
		doPlayerSendCancel(cid, "You are full.")
		return true
	end

	doPlayerFeed(cid, size)
	doRemoveItem(item.uid, 1)

	doCreatureSay(cid, food[2], TALKTYPE_MONSTER)
	return true
end
local FOODS =
{
        [2362] = {8, "Crunch."},
        [2666] = {15, "Munch."},
        [2667] = {12, "Munch."},
        [2668] = {10, "Mmmm."},
        [2669] = {17, "Munch."},
        [2670] = {4, "Gulp."},
        [2671] = {30, "Chomp."},
        [2672] = {60, "Chomp."},
        [2673] = {5, "Yum."},
        [2674] = {6, "Yum."},
        [2675] = {13, "Yum."},
        [2676] = {8, "Yum."},
        [2677] = {1, "Yum."},
        [2678] = {18, "Slurp."},
        [2679] = {1, "Yum."},
        [2680] = {2, "Yum."},
        [2681] = {9, "Yum."},
        [2682] = {20, "Yum."},
        [2683] = {17, "Munch."},
        [2684] = {8, "Crunch."},
        [2685] = {6, "Munch."},
        [2686] = {9, "Crunch."},
        [2687] = {2, "Crunch."},
        [2688] = {9, "Munch."},
        [2689] = {10, "Crunch."},
        [2690] = {3, "Crunch."},
        [2691] = {8, "Crunch."},
        [2792] = {6, "Munch."},
        [2793] = {9, "Munch."},
        [2695] = {6, "Gulp."},
        [2696] = {9, "Smack."},
        [2787] = {9, "Munch."},
        [2788] = {4, "Munch."},
        [2789] = {22, "Munch."},
        [2790] = {30, "Munch."},
        [2791] = {30, "Munch."},
        [2792] = {6, "Munch."},
        [2794] = {3, "Munch."},
        [2795] = {36, "Munch."},
        [2796] = {5, "Munch."},
        [2793] = {9, "Munch."},
        [5097] = {4, "Yum."},
        [6125] = {8, "Gulp."},
        [6278] = {10, "Mmmm."},
        [6279] = {15, "Mmmm."},
        [6393] = {12, "Mmmm."},
        [6394] = {15, "Mmmm."},
        [6501] = {20, "Mmmm."},
        [6541] = {6, "Gulp."},
        [6542] = {6, "Gulp."},
        [6543] = {6, "Gulp."},
        [6544] = {6, "Gulp."},
        [6545] = {6, "Gulp."},
        [6569] = {1, "Mmmm."},
        [6574] = {4, "Mmmm."},
        [7158] = {15, "Munch."},
        [7159] = {13, "Munch."},
        [7372] = {7, "Yum."},
        [7373] = {7, "Yum."},
        [7374] = {7, "Yum."},
        [7375] = {7, "Yum."},
        [7376] = {7, "Yum."},
        [7377] = {7, "Yum."},
        [7909] = {4, "Crunch."},
        [8838] = {7, "Gulp."},
        [8839] = {5, "Yum."},
        [8840] = {2, "Yum."},
        [8841] = {3, "Urgh."},
        [8842] = {3, "Munch."},
        [8843] = {3, "Crunch."},
        [8844] = {3, "Gulp."},
        [8845] = {2, "Munch."},
        [8847] = {11, "Yum."}
}

function onUse(cid, item, fromPosition, itemEx, toPosition)
        local food = FOODS[item.itemid]
        if(not food) then
                return false
        end

        if((getPlayerFood(cid) + food[1]) >= 400) then
                doPlayerSendCancel(cid, "You are full.")
                return true
        end

        doPlayerFeed(cid, food[1] * 4)
        doCreatureSay(cid, food[2], TALKTYPE_ORANGE_1)
        doRemoveItem(item.uid, 1)
        return true
end