tellraw @s [{"text":"    "},{"text":"Excellent!"}]

tellraw @s [{"text":"----"},{"text":"You have completed all challenges!"}]

tag @a remove swSocc_tutorial_2

execute as @e[tag=swSocc_arena] at @s run fill ~-15 ~-1 ~-15 ~15 ~5 ~15 air replace black_stained_glass
function app:soccer/get/ball_kill
tp @s @e[type=area_effect_cloud,tag=swSocc_arena,limit=1]

execute at @s run tp @s ^ ^ ^-12

execute at @s positioned ^ ^ ^3 run function app:soccer/get/ball_16


tellraw @s [{"text":"    "},{"underlined":true,"text":"<Leave Tutorial>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/clear"}}]
