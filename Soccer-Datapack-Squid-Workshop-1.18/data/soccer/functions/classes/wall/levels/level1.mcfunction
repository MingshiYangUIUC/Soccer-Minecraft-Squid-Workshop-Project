# setup 400 550 40%
fill -160 -60 77 -205 -59 35 air
tp @e[tag=swSocc_ball] -189.46 -60.00 78.52
execute as @e[tag=swSocc_ball] run function soccer:classes/motion/reset
execute positioned -196 -60 71 run fill ~ ~ ~ ~ ~1 ~ light_blue_stained_glass
execute positioned -195 -60 71 run fill ~ ~ ~ ~ ~1 ~ light_blue_stained_glass
execute positioned -194 -60 71 run fill ~ ~ ~ ~ ~1 ~ light_blue_stained_glass

#execute as @e[type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p
#goalkeeper: did not react quickly