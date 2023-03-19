# based on distance (d=..2) chance decrease from 1 to 0. if success tp the ball to the player

# calculate chance for each player and loop from high to low until success.

# @s is the ball!

say trygain

tag @a[scores={swSocc_player_detect=1}] add swSocc_tackle

tag @s add swSocc_d2
#execute as @a[tag=swSocc_tackle] at @s[nbt={FallFlying:0b}] run function soccer:classes/player/dribble/get_distance_standing
#execute as @a[tag=swSocc_tackle] at @s[nbt={FallFlying:1b}] run function soccer:classes/player/dribble/get_distance_jumping
execute as @a[tag=swSocc_tackle] at @s[nbt={OnGround:1b}] run function soccer:classes/player/dribble/get_distance_standing
execute as @a[tag=swSocc_tackle] at @s[nbt={OnGround:0b}] run function soccer:classes/player/dribble/get_distance_jumping
tag @s remove swSocc_d2

execute as @a[tag=swSocc_tackle] run tellraw @a [{"selector":"@s"},{"text":"Dist "},{"score":{"name":"@s","objective":"swSocc_distance"}}]

scoreboard players set Dmin swSocc_V 999999

execute as @a[tag=swSocc_tackle] run scoreboard players operation Dmin swSocc_V < @s swSocc_distance

execute as @a[tag=swSocc_tackle] if score @s swSocc_distance = Dmin swSocc_V run tag @s add swSocc_tackle_try

#tellraw @a [{"text":"D min  "},{"score":{"name":"Dmin","objective":"swSocc_V"}}]

execute as @a[tag=swSocc_tackle_try] run function soccer:classes/player/dribble/gain_try

#tellraw @a [{"text":"Try tackle"}]
execute if entity @a[tag=swSocc_tackle_success] run tellraw @a[tag=swSocc_debug] [{"text":"Possessed by "},{"selector":"@a[tag=swSocc_tackle_success]"}]


#execute if entity @a[tag=swSocc_tackle_success] run data modify entity @s Rotation[0] set from entity @a[tag=swSocc_tackle_success,limit=1] Rotation[0]
#execute if entity @a[tag=swSocc_tackle_success] run data modify entity @s Rotation[1] set value 0.0f
#execute if entity @a[tag=swSocc_tackle_success] at @s run tp @s ^ ^ ^1
execute if entity @a[tag=swSocc_tackle_success] run function soccer:classes/motion/reset
#execute if entity @a[tag=swSocc_tackle_success] run tp @s @a[tag=swSocc_tackle_success,limit=1]
execute as @a[tag=swSocc_tackle_success] run function soccer:classes/player/kick/kick
execute if entity @a[tag=swSocc_tackle_success] run scoreboard players set @s swSocc_time_dribble 10
execute unless entity @a[tag=swSocc_tackle_success] run scoreboard players set @s swSocc_time_dribble 10

tag @a[tag=swSocc_tackle_success] remove swSocc_tackle_success

tag @a remove swSocc_tackle