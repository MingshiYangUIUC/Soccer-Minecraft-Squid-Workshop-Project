# use time and an increasing seed to avoid repetition in the same tick
scoreboard players add RNGseed swSocc_V 1

execute store result score RNG swSocc_V run time query gametime
#tellraw @a [{"text":"0 "},{"score":{"name":"RNG","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"RNGseed","objective":"swSocc_V"}}]
#execute store result score RNG2 swSocc_V run data get entity @s UUID[0]

scoreboard players operation RNG swSocc_V *= RNGseed swSocc_V

scoreboard players operation RNG swSocc_V *= C_314159 swSocc_C
scoreboard players operation RNG swSocc_V *= C_2718281 swSocc_C


scoreboard players operation RNG swSocc_V *= RNG swSocc_V
scoreboard players operation RNG swSocc_V /= C_100 swSocc_C

scoreboard players operation RNG swSocc_V *= C_314159 swSocc_C
scoreboard players operation RNG swSocc_V *= C_2718281 swSocc_C


#tellraw @a [{"text":"1 "},{"score":{"name":"RNG","objective":"swSocc_V"}}]
