# prompt that a test arena will be set and all other session will be terminated, container 0,1,2 will be cleared.


tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"You are about to start the tutorial of Soccer Datapack. "}]
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"A test arena will replace the area from ~-15 ~-1 ~-15 to ~15 ~5 ~15. \n    All other soccer sessions will be terminated, and your slot 0,1,2 will be cleared."}]

tellraw @s[tag=swSocc_EN] [{"text":"    "},{"underlined":true,"text":"<Acknowledge and Start>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/main"}}]


tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"即将进入教程。"}]
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"教程会覆盖 ~-15 ~-1 ~-15 至 ~15 ~5 ~15 区域。 \n    现有足球会被清除，您的物品栏0、1、2也会被覆盖。"}]

tellraw @s[tag=swSocc_CN] [{"text":"    "},{"underlined":true,"text":"<了解并开始>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/main"}}]
