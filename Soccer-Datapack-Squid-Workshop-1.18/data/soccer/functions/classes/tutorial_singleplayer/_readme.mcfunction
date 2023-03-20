# prompt that a test arena will be set and all other session will be terminated, container 0,1,2 will be cleared.


tellraw @s [{"text":"    "},{"text":"You are about to start the tutorial of Soccer Datapack. "}]
tellraw @s [{"text":"    "},{"text":"A test arena will replace the area from ~-15 ~-1 ~-15 to ~15 ~5 ~15. \n    All other soccer sessions will be terminated, and your slot 0,1,2 will be cleared."}]

tellraw @s [{"text":"    "},{"underlined":true,"text":"<Acknowledge and Start>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/main"}}]
