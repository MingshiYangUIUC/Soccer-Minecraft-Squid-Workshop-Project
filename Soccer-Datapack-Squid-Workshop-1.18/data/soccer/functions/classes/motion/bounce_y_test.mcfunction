scoreboard players set vy swSocc_V 0
scoreboard players operation vy swSocc_V -= @s swSocc_vy
scoreboard players operation @s swSocc_vy = vy swSocc_V

scoreboard players operation @s swSocc_vy /= dground1 swSocc_C
scoreboard players operation @s swSocc_vy *= dground2 swSocc_C

scoreboard players remove @s swSocc_vy 5000

scoreboard players set @s[scores={swSocc_vy=..20000}] swSocc_vy 0

#say bbbb