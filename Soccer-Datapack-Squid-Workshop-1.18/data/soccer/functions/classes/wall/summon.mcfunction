summon armor_stand ~ ~ ~ {Tags:["swSocc_wall"],Invisible:1}
scoreboard players remove nwall swSocc_walls 1
execute if score nwall swSocc_walls matches 1.. run function soccer:classes/wall/summon
