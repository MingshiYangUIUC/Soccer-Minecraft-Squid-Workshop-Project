#tellraw @a [{"text":"Dist "},{"score":{"name":"@s","objective":"swSocc_distance"}}]

# chance (100) = 100 - (dist-100)/200
scoreboard players operation D_temp swSocc_V = @s swSocc_distance
scoreboard players remove D_temp swSocc_V 10000
scoreboard players set Chance swSocc_V 100
scoreboard players operation D_temp swSocc_V /= C_200 swSocc_C
scoreboard players operation Chance swSocc_V -= D_temp swSocc_V
# max chance is 80
execute if score Chance swSocc_V matches 81.. run scoreboard players set Chance swSocc_V 80


# RNG 
function soccer:classes/math/rng
scoreboard players operation RNG swSocc_V %= C_100 swSocc_C
tellraw @a[tag=swSocc_debug] [{"text":"Chance "},{"score":{"name":"Chance","objective":"swSocc_V"}},{"text":"% RNG "},{"score":{"name":"RNG","objective":"swSocc_V"}}]

execute if score Chance swSocc_V >= RNG swSocc_V run tag @s add swSocc_tackle_success

# choose the next player unless success


execute unless entity @s[tag=swSocc_tackle_success] run scoreboard players set Dmin swSocc_V 999999
execute unless entity @s[tag=swSocc_tackle_success] as @a[tag=!swSocc_tackle_try,tag=swSocc_tackle] run scoreboard players operation Dmin swSocc_V < @s swSocc_distance

#execute unless entity @s[tag=swSocc_tackle_success] run tellraw @a [{"text":"D min  "},{"score":{"name":"Dmin","objective":"swSocc_V"}}]

execute unless entity @s[tag=swSocc_tackle_success] as @a[tag=!swSocc_tackle_try,tag=swSocc_tackle] if score @s swSocc_distance = Dmin swSocc_V run tag @s add swSocc_tackle_try

tag @s remove swSocc_tackle_try
execute unless entity @s[tag=swSocc_tackle_success] run scoreboard players set @s swSocc_distance 9999999

execute unless entity @s[tag=swSocc_tackle_success] as @a[tag=swSocc_tackle_try] run function soccer:classes/player/dribble/gain_try