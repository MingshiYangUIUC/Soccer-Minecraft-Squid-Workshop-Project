

execute as @e[tag=swSocc_arena] at @s run fill ~-15 ~-1 ~-15 ~15 ~7 ~15 air replace black_stained_glass

execute as @e[tag=swSocc_arena_spread] at @s positioned ~ ~-6 ~ unless entity @e[tag=swSocc_ball,distance=..2] run fill ~ ~ ~ ~ ~2 ~ black_stained_glass replace air

kill @e[type=armor_stand,tag=swSocc_arena_spread]