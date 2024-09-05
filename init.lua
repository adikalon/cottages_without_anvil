minetest.clear_craft({
    output = "cottages:anvil"
})

minetest.clear_craft({
    output = "cottages:hammer"
})

if minetest.get_modpath("mobs_npc") then
	table.insert(mobs.human.items, {"cottages:anvil", "default:gold_ingot 150", 10})
	table.insert(mobs.human.items, {"cottages:hammer", "default:gold_ingot 50", 10})
end

if minetest.get_modpath("lootchests_default") then
	local items = {
		{"cottages:anvil"},
		{"cottages:hammer"},
	}

	lootchests.add_to_loot_table("lootchests_default:ocean_chest", items)
	lootchests.add_to_loot_table("lootchests_default:urn", items)
	lootchests.add_to_loot_table("lootchests_default:stone_chest", items)
	lootchests.add_to_loot_table("lootchests_default:basket", items)
	lootchests.add_to_loot_table("lootchests_default:barrel", items)
end

if minetest.get_modpath("dungeon_loot") then
	dungeon_loot.register({
		{name = "cottages:anvil", chance = 1, count = {1, 1}, y = {-31000, 31000}},
		{name = "cottages:hammer", chance = 1, count = {1, 1}, y = {-31000, 31000}},
	})
end

if minetest.get_modpath("bones_loot") then
	bones_loot.register_loot({
		{name = "cottages:anvil", chance = 1, count = {1, 1}, types = {"underworld_warrior"}},
		{name = "cottages:hammer", chance = 1, count = {1, 1}, types = {"underworld_warrior"}},
	})
end

if minetest.get_modpath("handle_schematics") then
	table.insert(handle_schematics.random_chest_content, {
		"cottages:hammer",
		1,
		1,
		1,
		chest_default = 1,
		farm_tiny = 1,
		farm_full = 1,
		shed = 1,
		hut = 1,
		chest_work = 1,
		lumberjack = 1,
		forge = 1,
		guard = 1,
		ship = 1,
		church = 1,
		library = 1,
		chest_private = 1,
		wreck = 1,
		tavern = 1,
		inn = 1,
		bakery = 1,
		shelf = 1,
	})
end
