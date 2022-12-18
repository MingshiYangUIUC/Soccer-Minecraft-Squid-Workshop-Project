# setup 800 300 40%
fill -160 -60 77 -205 -59 35 air
tp @e[tag=swSocc_ball] -175.28 -60.00 57.47
execute as @e[tag=swSocc_ball] run function soccer:classes/motion/reset
execute positioned -186 -60 56 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -186 -60 55 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -186 -60 54 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -191 -60 58 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -191 -60 60 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -191 -60 61 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -191 -60 57 run fill ~ ~ ~ ~ ~1 ~ white_stained_glass
execute positioned -191 -60 63 run fill ~ ~ ~ ~ ~1 ~ white_stained_glass
execute positioned -191 -60 64 run fill ~ ~ ~ ~ ~1 ~ white_stained_glass
execute positioned -190 -60 61 run fill ~ ~ ~ ~ ~1 ~ white_stained_glass

execute as @e[type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p
#goalkeeper: reacted but stopped