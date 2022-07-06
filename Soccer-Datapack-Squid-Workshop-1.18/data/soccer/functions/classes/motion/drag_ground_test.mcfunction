

scoreboard players operation @s swSocc_vx /= grounddrag1 swSocc_C
scoreboard players operation @s swSocc_vx *= grounddrag2 swSocc_C

scoreboard players operation @s swSocc_vz /= grounddrag1 swSocc_C
scoreboard players operation @s swSocc_vz *= grounddrag2 swSocc_C

scoreboard players set @s[scores={swSocc_vx=-400..400}] swSocc_vx 0
scoreboard players set @s[scores={swSocc_vz=-400..400}] swSocc_vz 0

#say dg