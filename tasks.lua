----------------------------------------------------
-- Default base task
----------------------------------------------------
customnode.register_task("customnode:node", function(nodedef)
	minetest.register_node(nodedef.name, nodedef)
end)

----------------------------------------------------
-- task for stairs and slabs using stairs mod
----------------------------------------------------
customnode.register_task("stairs:stairs_slabs", function(nodedef)
	if minetest.global_exists("stairs") then
		stairs.register_stair_and_slab(
			nodedef.name:gsub(':','_'),
			nodedef.name,
			table.copy(nodedef.groups),
			table.copy(nodedef.tiles),
			nodedef.description.." Stair",
			nodedef.description.." Stone Slab",
			table.copy(nodedef.sounds)
		)
	end
end)


customnode.register_task("carpets:carpet", function(nodedef)
	if minetest.global_exists("carpets") then
		carpets.register(nodedef.name)
	end
end)
