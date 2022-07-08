tag @s add swSocc_settingspin

# reference spin
execute store result score @s swSocc_r0 run data get entity @s Rotation[0] 10000
execute store result score @s swSocc_r1 run data get entity @s Rotation[1] 10000

#tellraw @s [{"text":"Turn to adjust spin. Click to set."}]