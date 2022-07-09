execute store result score @s swSocc_vx0 run data get entity @s Motion[0] 200000
execute store result score @s swSocc_vy0 run data get entity @s Motion[1] 200000
execute store result score @s swSocc_vz0 run data get entity @s Motion[2] 200000

# vxz0 = vxz *0.91
# vy0 = vy *0.98 - 15681
execute unless score @s swSocc_time matches ..1 run scoreboard players operation @s swSocc_vx0 *= airdrag6 swSocc_C
execute unless score @s swSocc_time matches ..1 run scoreboard players operation @s swSocc_vx0 /= airdrag5 swSocc_C
execute unless score @s swSocc_time matches ..1 run scoreboard players operation @s swSocc_vz0 *= airdrag6 swSocc_C
execute unless score @s swSocc_time matches ..1 run scoreboard players operation @s swSocc_vz0 /= airdrag5 swSocc_C
execute if score @s swSocc_time matches ..1 run scoreboard players operation @s swSocc_vx0 /= grounddrag3 swSocc_C
execute if score @s swSocc_time matches ..1 run scoreboard players operation @s swSocc_vx0 *= grounddrag4 swSocc_C
execute if score @s swSocc_time matches ..1 run scoreboard players operation @s swSocc_vz0 /= grounddrag3 swSocc_C
execute if score @s swSocc_time matches ..1 run scoreboard players operation @s swSocc_vz0 *= grounddrag4 swSocc_C

scoreboard players operation @s swSocc_vy0 *= airdrag4 swSocc_C
scoreboard players operation @s swSocc_vy0 /= airdrag3 swSocc_C
scoreboard players remove @s swSocc_vy0 15681

execute if entity @s at @s run function soccer:classes/motion/tpxyz
execute unless score @s swSocc_vx matches 0 store result entity @s Motion[0] double 0.000005 run scoreboard players get @s swSocc_vx
execute unless score @s swSocc_vy matches 0 store result entity @s Motion[1] double 0.000005 run scoreboard players get @s swSocc_vy
execute unless score @s swSocc_vz matches 0 store result entity @s Motion[2] double 0.000005 run scoreboard players get @s swSocc_vz

execute at @s run function soccer:classes/motion/drag_test
execute at @s run function soccer:classes/motion/magnus

scoreboard players add @s swSocc_time 1
scoreboard players remove Tguide swSocc_V 1
#execute at @s run particle minecraft:dragon_breath ~ ~0.2 ~ 0. 0. 0. 0 1 force
execute at @s run particle minecraft:composter ~ ~0.2 ~ 0. 0. 0. 0 1 force
execute unless score Tguide swSocc_V matches ..0 run execute at @s run function soccer:classes/motion/move_guide
execute if score Tguide swSocc_V matches ..0 run execute at @s run kill @s
