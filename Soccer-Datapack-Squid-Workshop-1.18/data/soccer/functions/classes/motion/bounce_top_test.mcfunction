execute at @s unless block ~ ~0.99 ~ air run tp @s ~ ~0.1 ~

execute unless score @s swSocc_vy matches 0 store result entity @s Motion[1] double 0.000005 run scoreboard players get @s swSocc_vy

scoreboard players operation @s swSocc_vy0 = @s swSocc_vy

execute if entity @s[scores={swSocc_vy=15001..}] run say reflect

scoreboard players set @s[scores={swSocc_vy=15001..}] swSocc_vy 15000



#scoreboard players operation @s swSocc_vy0 = @s swSocc_vy

say btop

tag @s add swSocc_bouncetop