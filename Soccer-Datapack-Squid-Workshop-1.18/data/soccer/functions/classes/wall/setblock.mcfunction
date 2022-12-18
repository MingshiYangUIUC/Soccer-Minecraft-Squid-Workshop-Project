function soccer:classes/math/rng
scoreboard players operation RNG swSocc_V %= C_100 swSocc_C

execute if score RNG swSocc_V matches ..49 if block ~ ~ ~ air run setblock ~ ~ ~ oak_door[half=lower,facing=west,hinge=left]
execute if score RNG swSocc_V matches ..49 if block ~ ~1 ~ air run setblock ~ ~1 ~ oak_door[half=upper,facing=west,hinge=left]

execute if score RNG swSocc_V matches 50..74 if block ~ ~ ~ air run setblock ~ ~ ~ birch_door[half=lower,facing=west,hinge=left]
execute if score RNG swSocc_V matches 50..74 if block ~ ~1 ~ air run setblock ~ ~1 ~ birch_door[half=upper,facing=west,hinge=left]

execute if score RNG swSocc_V matches 75..99 if block ~ ~ ~ air run setblock ~ ~ ~ iron_door[half=lower,facing=west,hinge=left]
execute if score RNG swSocc_V matches 75..99 if block ~ ~1 ~ air run setblock ~ ~1 ~ iron_door[half=upper,facing=west,hinge=left]

function soccer:classes/math/rng
scoreboard players operation RNG swSocc_V %= C_100 swSocc_C
execute if score RNG swSocc_V matches 75.. if block ~ ~2 ~ air run clone ~ ~1 ~ ~ ~1 ~ ~ ~2 ~

#execute if score RNG swSocc_V matches 50.. run summon creeper ~ ~ ~ {NoAI:1b,Tags:["swSocc_wall_mob"]}
#execute if score RNG swSocc_V matches ..49 run summon villager ~ ~ ~ {NoAI:1b,Tags:["swSocc_wall_mob"]}
