local config = {
	daily = false,
	centerCopperRoomPosition = Position(33608, 32417, 12)
	}	
	copper = {x=33607, y=32418, z=12}

function onUse(cid, item, fromPosition, itemEx)
	local player = Player(cid)
	if not player then
		return true
	end
	if(item.itemid == 22605) then
		if(itemEx.itemid == 22634) then
	        if player:getStorageValue(1) and #Game.getSpectators(copper, false, true, 16, 16, 16, 16) == 0 then
		doTeleportThing(cid, copper)
	        doSummonCreature("horadron", {x=33606, y=32417, z=12})
		doRemoveItem(item.uid, 1)
			end
end
end
			local specs, spec = Game.getSpectators(config.centerCopperRoomPosition, false, false, 16, 16, 16, 16)
		for i = 1, #specs do
			spec = specs[i]
			if spec:isPlayer() then
				return true
			end

			spec:remove()
		end
	return true
end