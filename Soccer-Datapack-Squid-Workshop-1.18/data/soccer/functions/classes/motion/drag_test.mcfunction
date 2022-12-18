







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

execute if entity @s[tag=!swSocc_guide,nbt={OnGround:1b}] run function soccer:classes/motion/drag_ground_test
execute if entity @s[tag=swSocc_guide,scores={swSocc_time=0}] run function soccer:classes/motion/drag_ground_test
#tellraw @a [{"score":{"name":"@e[tag=swSocc_ball,limit=1]","objective":"swSocc_vy"}}]