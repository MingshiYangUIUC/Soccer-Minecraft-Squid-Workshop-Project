
# spin stick
tellraw @s [{"text":"----"},{"text":"Let us play with the SPIN stick then. This stick adjusts the spin you apply to your NEXT kick."}]
tellraw @s [{"text":"    "},{"text":"It is often used in scenarios of freekicks."}]

tellraw @s [{"text":"    "},{"text":"You can right click once while holding the SPIN stick to START setting your spin."}]
tellraw @s [{"text":"    "},{"text":"After two values of Side and Top appears, rotate your line of sight to determine which side of the ball you will hit."}]
tellraw @s [{"text":"        "},{"text":"For example, if you want to kick the top right, rotate towards top right, and see the two values increase."}]
tellraw @s [{"text":"    "},{"text":"Right click again to confirm your setting."}]

tellraw @s [{"text":"    "},{"text":"For convenience, you can also kick the ball by approaching it while holding the SPIN stick."}]
tellraw @s [{"text":"    "},{"text":"When you kick the ball now, you will see the effect of spin on the ball trajectory."}]

# proceed
tellraw @s [{"text":"    "},{"underlined":true,"text":"<Next step: Dribble stick.>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/sticks_dribble"}}]