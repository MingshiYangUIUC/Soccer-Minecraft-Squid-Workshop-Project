# 

execute as @e[tag=swSocc_ball,limit=1,sort=nearest] at @s run summon armor_stand ~ ~ ~ {Tags:["swSocc_ball","swSocc_guide"],Small:1,Invisible:1}

scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vx -100000
scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vy 30000
scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vz 250000

scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vx0 1
scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vy0 1
scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_vz0 1

scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_wx -72000
scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_wy 66000
scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_wz 0
scoreboard players set @e[tag=swSocc_ball,tag=swSocc_guide] swSocc_time 0

scoreboard players set Tguide swSocc_V 50
execute unless score Tguide swSocc_V matches ..0 run execute as @e[tag=swSocc_ball,tag=swSocc_guide] run function soccer:classes/motion/move_guide