function app:soccer/get/sticks

tellraw @s[tag=swSocc_EN] [{"text":"----"},{"text":"3 invisible carrot_on_a_stick s are now in your first 3 item slots."}]
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"Please confirm they have names Spin, Kick, and Dribble."}]

# get the sticks
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"underlined":true,"text":"<How to get the sticks?>","color":"white","clickEvent":{"action":"suggest_command","value":"/function app:soccer/get/sticks"}}]

# Instructions for each stick

# Kick stick
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"Let us first play with the KICK stick. When you approach the ball holding this stick, you kick the ball towards where you look."}]
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"When you approach the ball looking upward, you kick the ball upward."}]

tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"You can right click once while holding the KICK stick to set your power."}]
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"The power depends on your viewing angle. Click it while looking up gives more power."}]
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"You will see your red power bar after the click. It applies to all of your future kicks."}]

tellraw @s[tag=swSocc_EN] [{"text":"    "},{"text":"Now try the KICK stick!"}]

# proceed
tellraw @s[tag=swSocc_EN] [{"text":"    "},{"underlined":true,"text":"<Next step: Spin stick.>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/sticks_spin"}}]


# CHINESE

tellraw @s[tag=swSocc_CN] [{"text":"----"},{"text":"现在您的前三个物品栏中有三个胡萝卜钓竿。"}]
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"它们的名字分别为 Spin （旋转）, Kick （踢）, and Dribble （带球）。"}]

# get the sticks
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"underlined":true,"text":"<如何获得钓竿？>","color":"white","clickEvent":{"action":"suggest_command","value":"/function app:soccer/get/sticks"}}]

# Instructions for each stick

# Kick stick
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"我们先看KICK钓竿。当您拿着名为 KICK 的钓竿接近球时，球会被踢往您的视线方向，例如抬头可以将球踢得更高。"}]

tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"拿着KICK时，您可以右键单击设置您的踢球力度。"}]
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"设置的力度和您的视线俯仰角有关，抬头时单击会设置更大的力度。"}]
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"设置后的力度会通过物品栏上方的红色横条显示，它会被应用于之后所有踢击。"}]

tellraw @s[tag=swSocc_CN] [{"text":"    "},{"text":"现在试着拿着钓竿踢球吧！"}]

# proceed
tellraw @s[tag=swSocc_CN] [{"text":"    "},{"underlined":true,"text":"<下一步：SPIN钓竿>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/sticks_spin"}}]