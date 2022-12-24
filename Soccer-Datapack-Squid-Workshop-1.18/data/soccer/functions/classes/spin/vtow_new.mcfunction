#w = (n X v)/r

# unit of ve: same as v: 10000 -> 1m/tick
# 1m/s = 8 rad/s = 0.4 rad/tick
# unit of w: m/s / r -> rad/tick

scoreboard players set #vAi swMath_V 0
scoreboard players set #vAj swMath_V 500
scoreboard players set #vAk swMath_V 0

scoreboard players operation #vBi swMath_V = @s swSocc_vx
scoreboard players operation #vBj swMath_V = @s swSocc_vy
scoreboard players operation #vBk swMath_V = @s swSocc_vz

#scoreboard players operation #vBi swMath_V /= C_100 swSocc_C
#scoreboard players operation #vBj swMath_V /= C_100 swSocc_C
#scoreboard players operation #vBk swMath_V /= C_100 swSocc_C

#tellraw @a [{"text":"vx "},{"score":{"objective":"swSocc_vx","name": "@s"}}]
#tellraw @a [{"text":"vz "},{"score":{"objective":"swSocc_vz","name": "@s"}}]

function math:classes/core/vector/cross

scoreboard players operation @s swSocc_wx = #vOi swMath_V
#scoreboard players operation @s swSocc_wy = #vOj swMath_V
scoreboard players operation @s swSocc_wz = #vOk swMath_V

#scoreboard players operation @s swSocc_wx *= C_100 swSocc_C
#scoreboard players operation @s swSocc_wy *= C_100 swSocc_C
#scoreboard players operation @s swSocc_wz *= C_100 swSocc_C

scoreboard players operation @s swSocc_wx /= C_r swSocc_C
#scoreboard players operation @s swSocc_wy /= C_r swSocc_C
scoreboard players operation @s swSocc_wz /= C_r swSocc_C

#tellraw @a [{"text":"wx "},{"score":{"objective":"swSocc_wx","name": "@s"}}]
#tellraw @a [{"text":"wz "},{"score":{"objective":"swSocc_wz","name": "@s"}}]