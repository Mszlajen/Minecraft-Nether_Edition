#DISABLE NETHER PORTALS 
#Based of https://www.planetminecraft.com/data-pack/disable-nether-portals/
execute as @a at @s run execute if block ~ ~ ~ minecraft:nether_portal run setblock ~ ~ ~ air

#TELEPORT AND SET SPAWN
execute at @a[tag=!nstart] as @a[tag=!nstart] in minecraft:the_nether run tp @s ~ ~ ~
execute at @a[tag=!nstart] as @a[tag=!nstart] in minecraft:the_nether run spreadplayers ~ ~ 1 100 under 120 false @s
execute at @a[tag=!nstart] as @a[tag=!nstart] in minecraft:the_nether run spawnpoint
execute at @a[tag=!nstart] as @a[tag=!nstart] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:bedrock
effect give @a[tag=!nstart] minecraft:resistance 60 5 false
effect give @a[tag=!nstart] minecraft:fire_resistance 60 0 false
effect give @a[tag=!nstart] minecraft:invisibility 60 5 false
give @a[tag=!nstart] minecraft:wooden_pickaxe{display:{Name:'{"text":"Old Reliable","color":"aqua","italic":false}'},HideFlags:4,Unbreakable:1b,Enchantments:[{id:"minecraft:vanishing_curse",lvl:1s}]}
#scoreboard players set @a nether 1
tag @a add nstart

#SHORTER GHAST RANGE
#execute as @e[type=ghast] run data merge entity @s {Attributes:[{Name:generic.followRange,Base:50}]}
