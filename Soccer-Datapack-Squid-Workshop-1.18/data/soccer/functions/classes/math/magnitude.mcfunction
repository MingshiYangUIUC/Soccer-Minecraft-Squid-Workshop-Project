#get magnitude of V of Ai,Aj,Ak. sqrt(Vi**2+Vj**2+Vk**2)
#reutn O's magnitude (V)

execute if score Ai swSocc_V matches -10000..10000 if score Aj swSocc_V matches -10000..10000 if score Ak swSocc_V matches -10000..10000 run tag @s add swSocc_svalue 

execute if entity @s[tag=!swSocc_svalue] run scoreboard players operation Ai swSocc_V /= C_100 swSocc_C
execute if entity @s[tag=!swSocc_svalue] run scoreboard players operation Aj swSocc_V /= C_100 swSocc_C
execute if entity @s[tag=!swSocc_svalue] run scoreboard players operation Ak swSocc_V /= C_100 swSocc_C

scoreboard players operation Ai swSocc_V *= Ai swSocc_V
scoreboard players operation Aj swSocc_V *= Aj swSocc_V
scoreboard players operation Ak swSocc_V *= Ak swSocc_V

scoreboard players operation SQRTin swSocc_V = Ai swSocc_V
scoreboard players operation SQRTin swSocc_V += Aj swSocc_V
scoreboard players operation SQRTin swSocc_V += Ak swSocc_V

function soccer:classes/math/sqrt
scoreboard players operation Omag swSocc_V = SQRTout swSocc_V

execute if entity @s[tag=!swSocc_svalue] run scoreboard players operation Omag swSocc_V *= C_100 swSocc_C
tag @s remove swSocc_svalue