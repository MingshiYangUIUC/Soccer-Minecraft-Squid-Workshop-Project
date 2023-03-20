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

tellraw @s[tag=swSocc_EN] [{"text":"----"},{"text":"Here is a small arena for you to practice. In front of you is a soccer ball."}]
tellraw @s[tag=swSocc_CN] [{"text":"----"},{"text":"这是一个小广场，您的前方生成了一个足球。"}]

# get the ball
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"underlined":true,"text":"<How to get the ball?>","color":"white","clickEvent":{"action":"suggest_command","value":"/function app:soccer/get/ball_16"}}]
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"underlined":true,"text":"<如何生成足球？>","color":"white","clickEvent":{"action":"suggest_command","value":"/function app:soccer/get/ball_16"}}]

# proceed
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"underlined":true,"text":"<Next step: Get your gears.>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/sticks_kick"}}]
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"underlined":true,"text":"<下一步：获得必需装备>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/sticks_kick"}}]