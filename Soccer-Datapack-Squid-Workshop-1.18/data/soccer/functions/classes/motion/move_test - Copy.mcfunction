#tellraw @a [{"text":"vy "},{"score":{"name":"@s","objective":"swSocc_vy"}},{"text":" vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}}]

execute store result score @s swSocc_vx0 run data get entity @s Motion[0] 200000
execute store result score @s swSocc_vy0 run data get entity @s Motion[1] 200000
execute store result score @s swSocc_vz0 run data get entity @s Motion[2] 200000

execute unless score @s swSocc_vx matches 0 store result entity @s Motion[0] double 0.0000055 run scoreboard players get @s swSocc_vx
execute unless score @s swSocc_vy matches 0 store result entity @s Motion[1] double 0.0000052 run scoreboard players get @s swSocc_vy
execute unless score @s swSocc_vz matches 0 store result entity @s Motion[2] double 0.0000055 run scoreboard players get @s swSocc_vz


scoreboard players operation @s[tag=swSocc_bouncetop] swSocc_vy = @s swSocc_vy0
scoreboard players operation @s[tag=swSocc_bouncetop] swSocc_vy *= C_-1 swSocc_C

tag @s[tag=swSocc_bouncetop] add swSocc_bouncetop_end
tag @s[tag=swSocc_bouncetop] remove swSocc_bouncetop
#tellraw @a [{"text":"AB vy "},{"score":{"name":"@s","objective":"swSocc_vy"}},{"text":" vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}}]

execute at @s unless block ~ ~0.99 ~ air unless entity @s[tag=swSocc_bouncetop_end] unless entity @s[nbt={OnGround:1b}] if score @s swSocc_vy0 matches -15681 run function soccer:classes/motion/bounce_top_test
execute at @s if block ~ ~0.99 ~ air run tag @s remove swSocc_bouncetop_end
#execute if entity @s[tag=swSocc_bouncetop_end] run say end
execute if entity @s[tag=swSocc_bouncetop_end] at @s run function soccer:classes/motion/tpxyz


execute unless entity @s[tag=swSocc_bouncetop_end] if score @s swSocc_vx0 matches 0 unless score @s swSocc_vx matches -999..999 run tag @s add swSocc_xbounce
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx /= dwall1 swSocc_C
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx *= dwall2 swSocc_C
scoreboard players operation @s[tag=swSocc_xbounce,tag=!swSocc_xbounce_end] swSocc_vx *= C_-1 swSocc_C
tag @s[tag=swSocc_xbounce_end] remove swSocc_xbounce
tag @s[tag=swSocc_xbounce_end] remove swSocc_xbounce_end
tag @s[tag=swSocc_xbounce] add swSocc_xbounce_end

execute unless entity @s[tag=swSocc_bouncetop_end] if score @s swSocc_vz0 matches 0 unless score @s swSocc_vz matches -999..999 run tag @s add swSocc_zbounce
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz /= dwall1 swSocc_C
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz *= dwall2 swSocc_C
scoreboard players operation @s[tag=swSocc_zbounce,tag=!swSocc_zbounce_end] swSocc_vz *= C_-1 swSocc_C
tag @s[tag=swSocc_zbounce_end] remove swSocc_zbounce
tag @s[tag=swSocc_zbounce_end] remove swSocc_zbounce_end
tag @s[tag=swSocc_zbounce] add swSocc_zbounce_end


#tellraw @a [{"text":"AB vy "},{"score":{"name":"@s","objective":"swSocc_vy"}},{"text":" vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}}]

