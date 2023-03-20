tellraw @s [{"text":"    "},{"text":"Great!"}]

tellraw @s [{"text":"----"},{"text":"Challenge 3: Please score the freekick."}]

tag @a remove swSocc_tutorial_1
tag @s add swSocc_tutorial_2

execute as @e[tag=swSocc_arena] at @s run fill ~-15 ~-1 ~-15 ~15 ~5 ~15 air replace black_stained_glass
function app:soccer/get/ball_kill
tp @s @e[type=area_effect_cloud,tag=swSocc_arena,limit=1]

execute at @s run tp @s ^ ^ ^-12

execute at @s positioned ^ ^ ^3 run function app:soccer/get/ball_16

execute as @e[tag=swSocc_arena] at @s run fill ^-1 ^0 ^ ^1 ^1 ^ black_stained_glass