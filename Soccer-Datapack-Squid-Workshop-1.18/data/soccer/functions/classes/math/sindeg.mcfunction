# input is sinin swSocc_V
# out is sinout swSocc_V

scoreboard players set C_1800000 swSocc_C 1800000
scoreboard players set C_3600000 swSocc_C 3600000

#scoreboard players operation sinin swSocc_V = @s swSocc_V

scoreboard players operation sinin swSocc_V %= C_3600000 swSocc_C

execute if score sinin swSocc_V matches ..1800000 run scoreboard players set sinscale swSocc_V 1
execute if score sinin swSocc_V matches 1800000.. run scoreboard players set sinscale swSocc_V -1
execute if score sinin swSocc_V matches 1800000.. run scoreboard players remove sinin swSocc_V 1800000

scoreboard players operation sinin_ swSocc_V = sinin swSocc_V
scoreboard players operation sinin_ swSocc_V /= C_100 swSocc_C

scoreboard players set sin_n swSocc_V 1800000
scoreboard players operation sin_n swSocc_V -= sinin swSocc_V

scoreboard players operation sin_d swSocc_V = sin_n swSocc_V

scoreboard players operation sin_n swSocc_V *= C_2 swSocc_C
scoreboard players operation sin_n swSocc_V *= C_2 swSocc_C

scoreboard players operation sin_n swSocc_V /= C_100 swSocc_C

scoreboard players operation sin_n swSocc_V *= sinin_ swSocc_V

scoreboard players operation sin_d swSocc_V /= C_100 swSocc_C
scoreboard players operation sin_d swSocc_V *= sinin_ swSocc_V
scoreboard players operation sin_d swSocc_V *= C_-1 swSocc_C



scoreboard players add sin_d swSocc_V 405000000

scoreboard players operation sin_d swSocc_V /= C_10000 swSocc_C

scoreboard players operation sin_n swSocc_V /= sin_d swSocc_V

scoreboard players operation sin_n swSocc_V *= sinscale swSocc_V

scoreboard players operation sinout swSocc_V = sin_n swSocc_V