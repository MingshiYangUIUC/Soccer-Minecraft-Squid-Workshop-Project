execute if entity @a[tag=swSocc_tutorial_0] as @e[tag=swSocc_arena] at @s positioned ^ ^ ^12 if entity @e[tag=swSocc_ball,distance=..1] as @a[tag=swSocc_tutorial_0] run function soccer:classes/tutorial_singleplayer/practice_1
execute if entity @a[tag=swSocc_tutorial_0] as @e[tag=swSocc_arena] at @s positioned ^ ^ ^12 run particle witch ~ ~ ~ .1 1 .1 0 10 force

execute if entity @a[tag=swSocc_tutorial_1] as @e[tag=swSocc_arena] at @s positioned ^ ^ ^12 if entity @e[tag=swSocc_ball,distance=..1] as @a[tag=swSocc_tutorial_1] run function soccer:classes/tutorial_singleplayer/practice_2
execute if entity @a[tag=swSocc_tutorial_1] as @e[tag=swSocc_arena] at @s positioned ^ ^ ^12 run particle witch ~ ~ ~ .1 1 .1 0 10 force

execute if entity @a[tag=swSocc_tutorial_2] as @e[tag=swSocc_arena] at @s positioned ^ ^ ^12 if entity @e[tag=swSocc_ball,distance=..2] as @a[tag=swSocc_tutorial_2] run function soccer:classes/tutorial_singleplayer/finish
execute if entity @a[tag=swSocc_tutorial_2] as @e[tag=swSocc_arena] at @s positioned ^ ^ ^12 run particle witch ~ ~ ~ .1 1 .1 0 10 force


