# Predefined state of motion


data merge entity @e[tag=swSocc_ball,limit=1,sort=nearest] {Marker:0b}
execute as @e[tag=swSocc_ball] run function soccer:classes/motion/reset

scoreboard players operation @e[tag=swSocc_ball] swSocc_vx = G_vx swSocc_V
scoreboard players operation @e[tag=swSocc_ball] swSocc_vy = G_vy swSocc_V
scoreboard players operation @e[tag=swSocc_ball] swSocc_vz = G_vz swSocc_V

scoreboard players operation @e[tag=swSocc_ball] swSocc_vx0 = G_vx0 swSocc_V
scoreboard players operation @e[tag=swSocc_ball] swSocc_vy0 = G_vy0 swSocc_V
scoreboard players operation @e[tag=swSocc_ball] swSocc_vz0 = G_vz0 swSocc_V

scoreboard players operation @e[tag=swSocc_ball] swSocc_wx = G_wx swSocc_V
scoreboard players operation @e[tag=swSocc_ball] swSocc_wy = G_wy swSocc_V
scoreboard players operation @e[tag=swSocc_ball] swSocc_wz = G_wz swSocc_V
scoreboard players set @e[tag=swSocc_ball] swSocc_time 0