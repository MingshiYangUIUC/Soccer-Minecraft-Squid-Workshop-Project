execute unless score @s swSocc_time matches 0..1 run function soccer:classes/spin/vtow_new

scoreboard players operation @s swSocc_vx /= grounddrag1 swSocc_C
scoreboard players operation @s swSocc_vx *= grounddrag2 swSocc_C

scoreboard players operation @s swSocc_vz /= grounddrag1 swSocc_C
scoreboard players operation @s swSocc_vz *= grounddrag2 swSocc_C

scoreboard players operation @s swSocc_wy /= grounddrag1 swSocc_C
scoreboard players operation @s swSocc_wy *= grounddrag2 swSocc_C

scoreboard players set @s[scores={swSocc_vx=-400..400}] swSocc_vx 0
scoreboard players set @s[scores={swSocc_vz=-400..400}] swSocc_vz 0

scoreboard players set @s[scores={swSocc_wy=-400..400}] swSocc_wy 0
#say dg