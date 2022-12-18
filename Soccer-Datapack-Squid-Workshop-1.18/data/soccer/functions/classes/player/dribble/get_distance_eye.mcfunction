execute anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["swSocc_d1"],Duration:0}
scoreboard players set Y_addon swSocc_V 0
execute as @e[type=area_effect_cloud,tag=swSocc_d1] at @s run function soccer:classes/math/distance

scoreboard players set Y_addon swSocc_V 0
scoreboard players operation @s swSocc_distance = Dout swSocc_V