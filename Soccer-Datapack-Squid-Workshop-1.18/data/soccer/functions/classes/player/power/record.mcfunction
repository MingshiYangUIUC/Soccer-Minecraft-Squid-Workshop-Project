execute store result score @s swSocc_r1 run data get entity @s Rotation[1] 1

scoreboard players operation Pm swSocc_V = @s swSocc_r1
scoreboard players add Pm swSocc_V 20

scoreboard players set PP swSocc_V 100
execute if score Pm swSocc_V matches ..0 run scoreboard players set Pm swSocc_V 0

#execute if score Pm swSocc_V matches 46.. run scoreboard players set Pm swSocc_V 45
#scoreboard players operation Pm swSocc_V *= C_2 swSocc_C


scoreboard players operation PP swSocc_V -= Pm swSocc_V

execute if score PP swSocc_V matches ..5 run scoreboard players set PP swSocc_V 5



execute if score @s swSocc_Rclick matches 1.. run scoreboard players operation @s swSocc_power = PP swSocc_V
execute if score @s swSocc_Rclick matches 1.. at @s run function soccer:classes/player/power/show

#scoreboard players set @s swSocc_Rclick 0

#tellraw @a [{"text":"PP "},{"score":{"name":"PP","objective":"swSocc_V"}},{"text":"Pm "},{"score":{"name":"Pm","objective":"swSocc_V"}}]
#tellraw @a [{"text":"Power "},{"score":{"name":"@s","objective":"swSocc_power"}}]