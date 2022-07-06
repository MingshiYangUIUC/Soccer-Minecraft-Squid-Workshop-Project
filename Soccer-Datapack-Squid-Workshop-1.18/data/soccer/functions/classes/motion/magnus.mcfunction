scoreboard players reset Oi swSocc_V
scoreboard players reset Oj swSocc_V
scoreboard players reset Ok swSocc_V

function soccer:classes/spin/get_a_spin

scoreboard players operation @s swSocc_vx += Oi swSocc_V
scoreboard players operation @s swSocc_vy += Oj swSocc_V
scoreboard players operation @s swSocc_vz += Ok swSocc_V


# drag omega

#tellraw @a [{"text":"omega y "},{"score":{"name":"@s","objective":"swSocc_wy"}}]

scoreboard players operation @s swSocc_wx *= airdrag4 swSocc_C
scoreboard players operation @s swSocc_wx /= airdrag3 swSocc_C
scoreboard players operation @s swSocc_wy *= airdrag4 swSocc_C
scoreboard players operation @s swSocc_wy /= airdrag3 swSocc_C
scoreboard players operation @s swSocc_wz *= airdrag4 swSocc_C
scoreboard players operation @s swSocc_wz /= airdrag3 swSocc_C

#tellraw @a [{"text":"omega y "},{"score":{"name":"@s","objective":"swSocc_wy"}}]
