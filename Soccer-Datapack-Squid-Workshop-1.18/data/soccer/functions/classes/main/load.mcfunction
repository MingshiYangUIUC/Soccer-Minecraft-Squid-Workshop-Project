function soccer:classes/main/clear

scoreboard objectives add swSocc_Rclick minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add swSocc_C dummy
scoreboard objectives add swSocc_V dummy

scoreboard objectives add swSocc_time dummy
scoreboard objectives add swSocc_time_marker dummy
scoreboard objectives add swSocc_time_back dummy
scoreboard objectives add swSocc_time_dribble dummy

scoreboard objectives add swSocc_vx dummy
scoreboard objectives add swSocc_vy dummy
scoreboard objectives add swSocc_vz dummy

scoreboard objectives add swSocc_vx0 dummy
scoreboard objectives add swSocc_vy0 dummy
scoreboard objectives add swSocc_vz0 dummy

scoreboard objectives add swSocc_wx dummy
scoreboard objectives add swSocc_wy dummy
scoreboard objectives add swSocc_wz dummy

scoreboard objectives add swSocc_r0 dummy
scoreboard objectives add swSocc_r1 dummy

scoreboard objectives add swSocc_power dummy
scoreboard objectives add swSocc_distance dummy

scoreboard objectives add swSocc_walls dummy

scoreboard objectives add swSocc_pose dummy

scoreboard objectives add swSocc_player_detect dummy

scoreboard players set C_314159 swSocc_C 314159
scoreboard players set C_2718281 swSocc_C 2718281

scoreboard players set C_10000 swSocc_C 10000
scoreboard players set C_1000 swSocc_C 1000
scoreboard players set C_300 swSocc_C 300
scoreboard players set C_200 swSocc_C 200
scoreboard players set C_100 swSocc_C 100
scoreboard players set C_20 swSocc_C 20
scoreboard players set C_10 swSocc_C 10
scoreboard players set C_5 swSocc_C 5
scoreboard players set C_2 swSocc_C 2
scoreboard players set C_-1 swSocc_C -1
scoreboard players set C_-10000 swSocc_C -10000

scoreboard players set C_r swSocc_C 2500

scoreboard players set SQRT3 swSocc_C 2

### drags
scoreboard players set dwall1 swSocc_C 5
scoreboard players set dwall2 swSocc_C 4

scoreboard players set dground1 swSocc_C 5
scoreboard players set dground2 swSocc_C 3

scoreboard players set grounddrag1 swSocc_C 10
scoreboard players set grounddrag2 swSocc_C 9

scoreboard players set grounddrag3 swSocc_C 1000
scoreboard players set grounddrag4 swSocc_C 546

scoreboard players set airdrag1 swSocc_C 100
scoreboard players set airdrag2 swSocc_C 99

scoreboard players set airdrag3 swSocc_C 100
scoreboard players set airdrag4 swSocc_C 98

scoreboard players set airdrag5 swSocc_C 100
scoreboard players set airdrag6 swSocc_C 91

scoreboard players set gdrag swSocc_C -4900


execute as @a[tag=!swSocc_EN,tag=!swSocc_CN] run function app:soccer/settings/language

execute as @a unless score @s swSocc_power matches 0..100 run scoreboard players set @s swSocc_power 50