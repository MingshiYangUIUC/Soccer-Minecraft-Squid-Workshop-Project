execute as @e[tag=swSocc_wall] at @s run fill ~ ~ ~ ~ ~2 ~ air replace #doors
#execute as @e[tag=swSocc_wall] at @s run fill ~ ~2 ~ ~ ~2 ~ air replace oak_trapdoor
execute as @e[tag=swSocc_wall_mob] at @s run fill ~ ~ ~ ~ ~1 ~ air replace barrier
kill @e[tag=swSocc_wall_mob]
kill @e[tag=swSocc_wall]
scoreboard players operation nwall swSocc_walls = @p swSocc_walls
scoreboard players operation nwall swSocc_walls *= C_2 swSocc_C
execute if score nwall swSocc_walls matches 1.. run function soccer:classes/wall/summon
spreadplayers ~ ~ 2 10 false @e[tag=swSocc_wall]
execute as @e[tag=swSocc_wall] at @s run function soccer:classes/wall/setblock

#execute as @e[tag=swSocc_wall_mob] at @s run fill ~ ~ ~ ~ ~1 ~ barrier replace air

#title @a title [{"text":"","color":"white"}]
#execute as @a run title @s title [{"text":"LEVEL ","color":"white"},{"score":{"name":"@s","objective": "swSocc_walls"}}]

execute as @a run tellraw @s [{"text":"---LEVEL ","color":"white"},{"score":{"name":"@s","objective": "swSocc_walls"}},{"text":"---"}]