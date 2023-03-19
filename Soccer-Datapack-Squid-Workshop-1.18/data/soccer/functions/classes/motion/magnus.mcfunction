scoreboard players reset Oi swSocc_V
scoreboard players reset Oj swSocc_V
scoreboard players reset Ok swSocc_V

#execute if score @s swSocc_time matches ..10 run tellraw @a [{"text":"  vy0 "},{"score":{"name":"@s","objective":"swSocc_vy0"}}]

function soccer:classes/spin/get_a_spin

scoreboard players operation @s swSocc_vx += Oi swSocc_V
scoreboard players operation @s swSocc_vy += Oj swSocc_V
scoreboard players operation @s swSocc_vz += Ok swSocc_V
#execute if score @s swSocc_time matches ..10 run tellraw @a [{"text":"  oj "},{"score":{"name":"Oj","objective":"swSocc_V"}}]
#execute if score @s swSocc_time matches ..10 run tellraw @a [{"text":"  vy "},{"score":{"name":"@s","objective":"swSocc_vy"}}]
# drag omega

#tellraw @a [{"text":"omega y "},{"score":{"name":"@s","objective":"swSocc_wy"}}]

scoreboard players operation @s swSocc_wx *= airdrag4 swSocc_C
scoreboard players operation @s swSocc_wx /= airdrag3 swSocc_C
scoreboard players operation @s swSocc_wy *= airdrag4 swSocc_C
scoreboard players operation @s swSocc_wy /= airdrag3 swSocc_C
scoreboard players operation @s swSocc_wz *= airdrag4 swSocc_C
scoreboard players operation @s swSocc_wz /= airdrag3 swSocc_C

#tellraw @a [{"text":"omega y "},{"score":{"name":"@s","objective":"swSocc_wy"}}]
