#execute if score @s swSocc_time matches 0 at @s run particle minecraft:crit ~ ~0.1 ~ 0.2 0.2 0.2 0.5 10 force
#execute if entity @s[tag=swSocc_xbounce_end] unless score @s swSocc_vx matches -30000..30000 at @s run particle minecraft:crit ~ ~0.1 ~ 0.2 0.2 0.2 0.5 100 force
#execute if entity @s[tag=swSocc_ybounce_end] unless score @s swSocc_vy matches -30000..30000 at @s run particle minecraft:crit ~ ~0.1 ~ 0.2 0.2 0.2 0.5 100 force
#execute if entity @s[tag=swSocc_zbounce_end] unless score @s swSocc_vz matches -30000..30000 at @s run particle minecraft:crit ~ ~0.1 ~ 0.2 0.2 0.2 0.5 100 force



#tellraw @a [{"text":"T "},{"score":{"name":"@s","objective":"swSocc_time"}}, {"text":" vx 1 "},{"score":{"name":"@s","objective":"swSocc_vx"}},{"text":" vx0 "},{"score":{"name":"@s","objective":"swSocc_vx0"}}]
#tellraw @a [{"text":"vz 0 "},{"score":{"name":"@s","objective":"swSocc_vz"}},{"text":" vz0 "},{"score":{"name":"@s","objective":"swSocc_vz0"}}]

execute store result score @s[scores={swSocc_time=0..}] swSocc_vx0 run data get entity @s Motion[0] 200000
execute store result score @s[scores={swSocc_time=0..}] swSocc_vy0 run data get entity @s Motion[1] 200000
execute store result score @s[scores={swSocc_time=0..}] swSocc_vz0 run data get entity @s Motion[2] 200000

# change Marker
execute if score @s swSocc_vx0 matches 0 if score @s swSocc_vz0 matches 0 if score @s swSocc_vy0 matches -15681 run scoreboard players add @s swSocc_time_marker 1
execute if score @s swSocc_time_marker matches 10.. run data merge entity @s {Marker:1b}
execute if score @s swSocc_time_marker matches 10 run tag @s add swSocc_marker

#tellraw @a [{"text":"vx0 "},{"score":{"name":"@s","objective":"swSocc_vx0"}},{"text":" vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}},{"text":" vz0 "},{"score":{"name":"@s","objective":"swSocc_vz0"}}]
#tellraw @a [{"text":"vx "},{"score":{"name":"@s","objective":"swSocc_vx"}},{"text":" vy "},{"score":{"name":"@s","objective":"swSocc_vy"}},{"text":" vz "},{"score":{"name":"@s","objective":"swSocc_vz"}}]

#tellraw @a [{"text":"vx0 1 "},{"score":{"name":"@s","objective":"swSocc_vx"}},{"text":" vz0 "},{"score":{"name":"@s","objective":"swSocc_vz0"}}]


execute unless score @s swSocc_vx matches 0 store result entity @s Motion[0] double 0.000005 run scoreboard players get @s swSocc_vx
execute unless score @s swSocc_vy matches 0 store result entity @s Motion[1] double 0.000005 run scoreboard players get @s swSocc_vy
execute unless score @s swSocc_vz matches 0 store result entity @s Motion[2] double 0.000005 run scoreboard players get @s swSocc_vz

#tellraw @a [{"text":"AB vy "},{"score":{"name":"@s","objective":"swSocc_vy"}},{"text":" vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}}]


# store y for hitbox
execute store result score y_temp swSocc_V run data get entity @s Pos[1] 10000

execute unless score @s swSocc_time matches 0..1 if score @s swSocc_vx0 matches 0 unless score @s swSocc_vx matches -999..999 run tag @s add swSocc_xbounce
#execute at @s if block ~0.3 ~ ~ air if block ~-0.3 ~ ~ air run tag @s remove swSocc_xbounce
execute at @s[tag=swSocc_xbounce] if block ~ ~1 ~ end_rod if block ~ ~ ~ air run tag @s add swSocc_xbounce_end
execute at @s[tag=swSocc_xbounce_end] run tag @s remove swSocc_xbounce
execute at @s[tag=swSocc_xbounce_end] if block ~-1 ~ ~ air at @s run tp @s ~-0.1 ~ ~
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx /= dwall1 swSocc_C
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx *= dwall2 swSocc_C
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx *= C_-1 swSocc_C
tag @s[tag=swSocc_xbounce_end] remove swSocc_xbounce
tag @s[tag=swSocc_xbounce_end] remove swSocc_xbounce_end
tag @s[tag=swSocc_xbounce] add swSocc_xbounce_end

execute unless score @s swSocc_time matches 0..1 if score @s swSocc_vz0 matches 0 unless score @s swSocc_vz matches -999..999 run tag @s add swSocc_zbounce
#execute at @s if block ~ ~ ~0.3 air if block ~ ~ ~-0.3 air run tag @s remove swSocc_zbounce
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz /= dwall1 swSocc_C
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz *= dwall2 swSocc_C
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz *= C_-1 swSocc_C
tag @s[tag=swSocc_zbounce_end] remove swSocc_zbounce
tag @s[tag=swSocc_zbounce_end] remove swSocc_zbounce_end
tag @s[tag=swSocc_zbounce] add swSocc_zbounce_end



execute unless score @s swSocc_time matches 0..1 if score @s swSocc_vy0 matches -15681 unless score @s swSocc_vy matches -19999..19999 run tag @s add swSocc_ybounce
scoreboard players operation @s[tag=swSocc_ybounce,tag=!swSocc_ybounce_end] swSocc_vy /= dground1 swSocc_C
scoreboard players operation @s[tag=swSocc_ybounce,tag=!swSocc_ybounce_end] swSocc_vy *= dground2 swSocc_C
scoreboard players operation @s[tag=swSocc_ybounce,tag=!swSocc_ybounce_end] swSocc_vy *= C_-1 swSocc_C
tag @s[tag=swSocc_ybounce_end] remove swSocc_ybounce
tag @s[tag=swSocc_ybounce_end] remove swSocc_ybounce_end
tag @s[tag=swSocc_ybounce] add swSocc_ybounce_end
scoreboard players set @s[tag=swSocc_ybounce,scores={swSocc_vy=-20000..20000}] swSocc_vy 0

#tellraw @a [{"text":"AB vy "},{"score":{"name":"@s","objective":"swSocc_vy"}},{"text":" vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}}]


execute at @s run function soccer:classes/motion/drag_test

#tellraw @a [{"text":"vx0 2 "},{"score":{"name":"@s","objective":"swSocc_vx"}},{"text":" vz0 "},{"score":{"name":"@s","objective":"swSocc_vz0"}}]

execute at @s run function soccer:classes/motion/magnus

#tellraw @a [{"text":"vx0 3 "},{"score":{"name":"@s","objective":"swSocc_vx"}},{"text":" vz0 "},{"score":{"name":"@s","objective":"swSocc_vz0"}}]

scoreboard players add @s swSocc_time 1


#execute unless entity @s[tag=!swSocc_xbounce_end] unless entity @s[tag=!swSocc_xbounce_end] run tellraw @a [{"text":"Bounced"}]