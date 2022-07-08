scoreboard players operation Ref swSocc_r0 = @s swSocc_r0
scoreboard players operation Ref swSocc_r1 = @s swSocc_r1
#scoreboard players set Ref swSocc_r1 0

execute store result score @s swSocc_r0 run data get entity @s Rotation[0] 10000
execute store result score @s swSocc_r1 run data get entity @s Rotation[1] 10000

scoreboard players operation Sspin swSocc_V = @s swSocc_r0
scoreboard players operation Sspin swSocc_V -= Ref swSocc_r0

scoreboard players operation Tspin swSocc_V = @s swSocc_r1
scoreboard players operation Tspin swSocc_V -= Ref swSocc_r1

scoreboard players operation Sspin swSocc_V /= C_300 swSocc_C
scoreboard players operation Tspin swSocc_V /= C_300 swSocc_C
scoreboard players operation Tspin swSocc_V *= C_-1 swSocc_C


scoreboard players operation @s swSocc_r0 = Ref swSocc_r0
scoreboard players operation @s swSocc_r1 = Ref swSocc_r1


title @s actionbar [{"text":"Side: "},{"score":{"name": "Sspin","objective": "swSocc_V"}},{"text":" Top: "},{"score":{"name": "Tspin","objective": "swSocc_V"}}]


