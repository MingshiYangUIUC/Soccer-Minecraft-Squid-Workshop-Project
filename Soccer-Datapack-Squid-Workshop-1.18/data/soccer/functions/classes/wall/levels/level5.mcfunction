# setup 1000 400 70%
fill -160 -60 77 -205 -59 35 air
tp @e[tag=swSocc_ball] -161.55 -60.00 51.70
execute as @e[tag=swSocc_ball] run function soccer:classes/motion/reset
execute positioned -177 -60 53 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -177 -60 52 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -177 -60 51 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass

#execute as @e[type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p
#goalkeeper: no reaction