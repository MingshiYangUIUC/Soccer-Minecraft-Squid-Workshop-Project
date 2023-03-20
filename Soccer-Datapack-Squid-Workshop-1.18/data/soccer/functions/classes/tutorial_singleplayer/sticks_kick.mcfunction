function app:soccer/get/sticks

tellraw @s [{"text":"----"},{"text":"3 invisible carrot_on_a_stick s are now in your first 3 item slots."}]
tellraw @s [{"text":"    "},{"text":"Please confirm they have names Spin, Kick, and Dribble."}]

# get the sticks
tellraw @s [{"text":"    "},{"underlined":true,"text":"<How to get the sticks?>","color":"white","clickEvent":{"action":"suggest_command","value":"/function app:soccer/get/sticks"}}]

# Instructions for each stick

# Kick stick
tellraw @s [{"text":"    "},{"text":"Let us first play with the KICK stick. When you approach the ball holding this stick, you kick the ball towards where you look."}]
tellraw @s [{"text":"    "},{"text":"When you approach the ball looking upward, you kick the ball upward."}]

tellraw @s [{"text":"    "},{"text":"You can right click once while holding the KICK stick to set your power."}]
tellraw @s [{"text":"    "},{"text":"The power depends on your viewing angle. Click it while looking up gives more power."}]
tellraw @s [{"text":"    "},{"text":"You will see your red power bar after the click. It applies to all of your future kicks."}]

tellraw @s [{"text":"    "},{"text":"Now try the KICK stick!"}]

# proceed
tellraw @s [{"text":"    "},{"underlined":true,"text":"<Next step: Spin stick.>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/sticks_spin"}}]