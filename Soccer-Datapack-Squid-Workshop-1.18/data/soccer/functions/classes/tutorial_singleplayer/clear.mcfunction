execute as @e[tag=swSocc_arena] at @s run fill ~-15 ~-1 ~-15 ~15 ~5 ~15 air
kill @e[tag=swSocc_arena]
function app:soccer/get/ball_kill
tag @a remove swSocc_tutorial
tag @a remove swSocc_tutorial_0
tag @a remove swSocc_tutorial_1
tag @a remove swSocc_tutorial_2