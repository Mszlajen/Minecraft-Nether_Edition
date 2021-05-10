#DISABLE NETHER PORTALS 
#Based of https://www.planetminecraft.com/data-pack/disable-nether-portals/
execute as @a at @s run execute if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ air

#TELEPORT AND SET SPAWN
execute at @a as @a run tag @a[nbt={Dimension:"minecraft:overworld"}] add toTeleport
execute at @a[tag=toTeleport] as @a[tag=toTeleport] in minecraft:the_nether run tp @s ~ ~ ~
#execute at @a[tag=toTeleport] as @a[tag=toTeleport] in minecraft:the_nether run spawnpoint @s ~ ~ ~
execute at @a[tag=toTeleport] as @a[tag=toTeleport] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:obsidian
execute at @a[tag=toTeleport] as @a[tag=toTeleport] run fill ~-1 ~ ~-1 ~1 ~1 ~1 minecraft:air
give @a[tag=!nstart] minecraft:wooden_pickaxe{display:{Name:'{"text":"Old Reliable","color":"aqua","italic":false}'},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}
tag @a add nstart
tag @a remove toTeleport

#SHORTER GHAST RANGE
#execute as @e[type=ghast] run data merge entity @s {Attributes:[{Name:generic.followRange,Base:50}]}
