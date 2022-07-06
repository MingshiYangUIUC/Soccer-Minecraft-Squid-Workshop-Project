







#tellraw @a [{"text":"1 "},{"score":{"name":"@e[tag=swSocc_ball,limit=1]","objective":"swSocc_vx"}}]

#execute if score @s swSocc_vx >= xzdragp swSocc_C run scoreboard players operation @s swSocc_vx -= xzdragp swSocc_C

#tellraw @a [{"text":"2 "},{"score":{"name":"@e[tag=swSocc_ball,limit=1]","objective":"swSocc_vx"}}]

#execute if score @s swSocc_vx <= xzdragn swSocc_C run scoreboard players operation @s swSocc_vx -= xzdragn swSocc_C

#tellraw @a [{"text":"3 "},{"score":{"name":"@e[tag=swSocc_ball,limit=1]","objective":"swSocc_vx"}}]

#execute if score @s swSocc_vx > xzdragn swSocc_C if score @s swSocc_vx < xzdragp swSocc_C run scoreboard players set @s swSocc_vx 0

#tellraw @a [{"text":"4 "},{"score":{"name":"@e[tag=swSocc_ball,limit=1]","objective":"swSocc_vx"}}]

#execute if score @s swSocc_vy >= ydragp swSocc_C run scoreboard players operation @s swSocc_vy -= xzdragp swSocc_C

#execute if score @s swSocc_vy <= ydragn swSocc_C run scoreboard players operation @s swSocc_vy -= xzdragn swSocc_C

#execute as @e[tag=swSocc_ball] if score @s swSocc_vy > ydragn swSocc_C if score @s swSocc_vy < ydragp swSocc_C run scoreboard players set @s swSocc_vy 0


scoreboard players operation @s swSocc_vx *= airdrag2 swSocc_C
scoreboard players operation @s swSocc_vx /= airdrag1 swSocc_C
scoreboard players operation @s swSocc_vy *= airdrag2 swSocc_C
scoreboard players operation @s swSocc_vy /= airdrag1 swSocc_C
scoreboard players operation @s swSocc_vz *= airdrag2 swSocc_C
scoreboard players operation @s swSocc_vz /= airdrag1 swSocc_C

execute run scoreboard players operation @s swSocc_vy += gdrag swSocc_C

#tellraw @a [{"text":"0 "},{"score":{"name":"@e[tag=swSocc_ball,limit=1]","objective":"swSocc_vy"}}]

#execute as @e[tag=swSocc_ball] at @s if entity @s[nbt={OnGround:1b}] run scoreboard players set @s[scores={swSocc_vy=-19999..-1}] swSocc_vy 0
#execute as @e[tag=swSocc_ball] at @s if block ~ ~0.99 ~ air if entity @s[nbt={OnGround:1b},scores={swSocc_vy=..-20000}] run function soccer:classes/motion/bounce_y_test


execute if entity @s[nbt={OnGround:1b}] run function soccer:classes/motion/drag_ground_test

#tellraw @a [{"score":{"name":"@e[tag=swSocc_ball,limit=1]","objective":"swSocc_vy"}}]