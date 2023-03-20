# set a new arena...

function soccer:classes/tutorial_singleplayer/clear
tag @s add swSocc_tutorial
item replace entity @s container.0 with air
item replace entity @s container.1 with air
item replace entity @s container.2 with air

fill ~-15 ~-1 ~-15 ~15 ~5 ~15 glass hollow

fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 light_gray_concrete

summon area_effect_cloud ~ ~ ~ {Duration:1000000,Tags:["swSocc_arena"]}

tp @s ~ ~ ~ 0 0

function app:soccer/get/ball_16

execute at @s run tp @s ^ ^ ^-5

tellraw @s [{"text":"----"},{"text":"Here is a small arena for you to practice. In front of you is a soccer ball."}]

# get the ball
tellraw @s [{"text":"    "},{"underlined":true,"text":"<How to get the ball?>","color":"white","clickEvent":{"action":"suggest_command","value":"/function app:soccer/get/ball_16"}}]

# proceed
tellraw @s [{"text":"    "},{"underlined":true,"text":"<Next step: Get your gears.>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/sticks_kick"}}]