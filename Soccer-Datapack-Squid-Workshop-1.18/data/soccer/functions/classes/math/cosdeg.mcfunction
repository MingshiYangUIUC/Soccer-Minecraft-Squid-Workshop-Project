# input is cosin swSocc_V
# out is cosout swSocc_V

scoreboard players set C_1800000 swSocc_C 1800000
scoreboard players set C_3600000 swSocc_C 3600000

#scoreboard players operation cosin swSocc_V = @s swSocc_V
scoreboard players add cosin swSocc_V 900000
scoreboard players operation cosin swSocc_V %= C_3600000 swSocc_C

execute if score cosin swSocc_V matches ..1800000 run scoreboard players set cosscale swSocc_V 1
execute if score cosin swSocc_V matches 1800000.. run scoreboard players set cosscale swSocc_V -1
execute if score cosin swSocc_V matches 1800000.. run scoreboard players remove cosin swSocc_V 1800000

scoreboard players operation cosin_ swSocc_V = cosin swSocc_V
scoreboard players operation cosin_ swSocc_V /= C_100 swSocc_C

scoreboard players set cos_n swSocc_V 1800000
scoreboard players operation cos_n swSocc_V -= cosin swSocc_V

scoreboard players operation cos_d swSocc_V = cos_n swSocc_V

scoreboard players operation cos_n swSocc_V *= C_2 swSocc_C
scoreboard players operation cos_n swSocc_V *= C_2 swSocc_C

scoreboard players operation cos_n swSocc_V /= C_100 swSocc_C

scoreboard players operation cos_n swSocc_V *= cosin_ swSocc_V

scoreboard players operation cos_d swSocc_V /= C_100 swSocc_C
scoreboard players operation cos_d swSocc_V *= cosin_ swSocc_V
scoreboard players operation cos_d swSocc_V *= C_-1 swSocc_C



scoreboard players add cos_d swSocc_V 405000000

scoreboard players operation cos_d swSocc_V /= C_10000 swSocc_C

scoreboard players operation cos_n swSocc_V /= cos_d swSocc_V

scoreboard players operation cos_n swSocc_V *= cosscale swSocc_V

scoreboard players operation cosout swSocc_V = cos_n swSocc_V