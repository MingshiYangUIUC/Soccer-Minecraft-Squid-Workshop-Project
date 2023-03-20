tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"Good Job!"}]
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"成功！"}]
tellraw @s[tag=swSocc_EN] [{"text":"----"},{"text":"Challenge 2: Please bring the ball to the opposite side of the room."}]
tellraw @s[tag=swSocc_CN] [{"text":"----"},{"text":"第二关，请将球移动到房间对面的紫色标记处。"}]
tag @a remove swSocc_tutorial_0
tag @s add swSocc_tutorial_1

function app:soccer/get/ball_kill
tp @s @e[type=area_effect_cloud,tag=swSocc_arena,limit=1]
#execute at @s run tp @s ~ ~ ~ 0 0
kill @e[type=armor_stand,tag=swSocc_arena_spread]

summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}
summon armor_stand ~ ~ ~ {Tags:["swSocc_arena_spread"],Invisible:0}

execute at @e[type=area_effect_cloud,tag=swSocc_arena,limit=1] run spreadplayers ~ ~ 3 12 false @e[tag=swSocc_arena_spread]

schedule function soccer:classes/tutorial_singleplayer/practice_1_set 5t

execute at @s run tp @s ^ ^ ^-12

execute at @s positioned ^ ^ ^3 run function app:soccer/get/ball_16