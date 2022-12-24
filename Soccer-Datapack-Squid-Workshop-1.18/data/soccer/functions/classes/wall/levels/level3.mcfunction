# setup 300 500 60%
fill -160 -60 77 -205 -59 35 air
tp @e[tag=swSocc_ball] -164.41 -60.00 36.41
execute as @e[tag=swSocc_ball] run function soccer:classes/motion/reset
execute positioned -187 -60 62 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -188 -60 52 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -188 -60 51 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -180 -60 42 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -174 -60 50 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -164 -60 63 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -179 -60 61 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass
execute positioned -178 -60 61 run fill ~ ~ ~ ~ ~1 ~ blue_stained_glass

execute positioned -188 -60 63 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -185 -60 61 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -188 -60 60 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -188 -60 57 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -188 -60 56 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -188 -60 53 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -188 -60 50 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -176 -60 55 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -179 -60 42 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass
execute positioned -180 -60 41 run fill ~ ~ ~ ~ ~1 ~ red_stained_glass

#execute as @e[type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p
#goalkeeper: stand at right side, not much reaction