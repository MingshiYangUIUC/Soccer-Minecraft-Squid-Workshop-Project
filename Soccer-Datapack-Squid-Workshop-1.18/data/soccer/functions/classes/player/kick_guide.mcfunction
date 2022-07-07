# 

execute as @e[tag=swSocc_ball,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["swSocc_ball","swSocc_guide"],Small:1,Invisible:1}

scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vx = G_vx swSocc_V
scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vy = G_vy swSocc_V
scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vz = G_vz swSocc_V

scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vx0 = G_vx0 swSocc_V
scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vy0 = G_vy0 swSocc_V
scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vz0 = G_vz0 swSocc_V

scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_wx = G_wx swSocc_V
scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_wy = G_wy swSocc_V
scoreboard players operation @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_wz = G_wz swSocc_V
scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_time 0

scoreboard players set Tguide swSocc_V 50
execute unless score Tguide swSocc_V matches ..0 run execute as @e[tag=swSocc_ball,tag=swSocc_guide] run function soccer:classes/motion/move_guide