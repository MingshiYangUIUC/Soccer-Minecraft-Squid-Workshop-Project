execute if score @s swSocc_time matches 0 run particle minecraft:crit ~ ~0.1 ~ 0.2 0.2 0.2 1 100 force

#tellraw @a [{"text":"vx "},{"score":{"name":"@s","objective":"swSocc_vx"}},{"text":" vx0 "},{"score":{"name":"@s","objective":"swSocc_vx0"}}]

execute store result score @s swSocc_vx0 run data get entity @s Motion[0] 200000
execute store result score @s swSocc_vy0 run data get entity @s Motion[1] 200000
execute store result score @s swSocc_vz0 run data get entity @s Motion[2] 200000

execute unless score @s swSocc_vx matches 0 store result entity @s Motion[0] double 0.000005 run scoreboard players get @s swSocc_vx
execute unless score @s swSocc_vy matches 0 store result entity @s Motion[1] double 0.000005 run scoreboard players get @s swSocc_vy
execute unless score @s swSocc_vz matches 0 store result entity @s Motion[2] double 0.000005 run scoreboard players get @s swSocc_vz

#tellraw @a [{"text":"AB vy "},{"score":{"name":"@s","objective":"swSocc_vy"}},{"text":" vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}}]


execute unless score @s swSocc_time matches 0 if score @s swSocc_vx0 matches 0 unless score @s swSocc_vx matches -999..999 run tag @s add swSocc_xbounce
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx /= dwall1 swSocc_C
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx *= dwall2 swSocc_C
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx *= C_-1 swSocc_C
tag @s[tag=swSocc_xbounce_end] remove swSocc_xbounce
tag @s[tag=swSocc_xbounce_end] remove swSocc_xbounce_end
tag @s[tag=swSocc_xbounce] add swSocc_xbounce_end

execute unless score @s swSocc_time matches 0 if score @s swSocc_vz0 matches 0 unless score @s swSocc_vz matches -999..999 run tag @s add swSocc_zbounce
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz /= dwall1 swSocc_C
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz *= dwall2 swSocc_C
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz *= C_-1 swSocc_C
tag @s[tag=swSocc_zbounce_end] remove swSocc_zbounce
tag @s[tag=swSocc_zbounce_end] remove swSocc_zbounce_end
tag @s[tag=swSocc_zbounce] add swSocc_zbounce_end



execute unless score @s swSocc_time matches 0 if score @s swSocc_vy0 matches -15681 unless score @s swSocc_vy matches -19999..19999 run tag @s add swSocc_ybounce
scoreboard players operation @s[tag=swSocc_ybounce,tag=!swSocc_ybounce_end] swSocc_vy /= dground1 swSocc_C
scoreboard players operation @s[tag=swSocc_ybounce,tag=!swSocc_ybounce_end] swSocc_vy *= dground2 swSocc_C
scoreboard players operation @s[tag=swSocc_ybounce,tag=!swSocc_ybounce_end] swSocc_vy *= C_-1 swSocc_C
tag @s[tag=swSocc_ybounce_end] remove swSocc_ybounce
tag @s[tag=swSocc_ybounce_end] remove swSocc_ybounce_end
tag @s[tag=swSocc_ybounce] add swSocc_ybounce_end
scoreboard players set @s[tag=swSocc_ybounce,scores={swSocc_vy=-20000..20000}] swSocc_vy 0

#tellraw @a [{"text":"AB vy "},{"score":{"name":"@s","objective":"swSocc_vy"}},{"text":" vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}}]

scoreboard players add @s swSocc_time 1