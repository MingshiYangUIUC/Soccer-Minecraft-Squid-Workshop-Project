
bossbar set minecraft:power players @s

execute store result bossbar minecraft:power value run scoreboard players get @s swSocc_power

schedule function soccer:classes/player/power/hide 20t