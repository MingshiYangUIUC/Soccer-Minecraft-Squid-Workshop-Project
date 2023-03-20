# practice session
tellraw @s [{"text":"----"},{"text":"Challenge 1: Please bring the ball to the opposite side of the room."}]

# set up a scenario

tag @s add swSocc_tutorial_0

function app:soccer/get/ball_kill
tp @s @e[type=area_effect_cloud,tag=swSocc_arena,limit=1]
execute as @e[tag=swSocc_arena] at @s run fill ~-15 ~-1 ~-15 ~15 ~7 ~15 air replace black_stained_glass
#execute at @s run tp @s ~ ~ ~ 0 0

execute at @s run tp @s ^ ^ ^-12

execute at @s positioned ^ ^ ^5 run function app:soccer/get/ball_16