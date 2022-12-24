# setup -350 350 35%
fill -160 -60 77 -205 -59 35 air
tp @e[tag=swSocc_ball] -178.36 -60.00 50.42
execute as @e[tag=swSocc_ball] run function soccer:classes/motion/reset
execute positioned -188 -60 50 run fill ~ ~ ~ ~ ~1 ~ light_blue_stained_glass
execute positioned -188 -60 51 run fill ~ ~ ~ ~ ~1 ~ light_blue_stained_glass
execute positioned -188 -60 52 run fill ~ ~ ~ ~ ~1 ~ light_blue_stained_glass
execute positioned -188 -60 53 run fill ~ ~ ~ ~ ~1 ~ light_blue_stained_glass

#execute as @e[type=armor_stand] at @s run tp @s ~ ~ ~ facing entity @p
#goalkeeper: stand at right side, not much reaction