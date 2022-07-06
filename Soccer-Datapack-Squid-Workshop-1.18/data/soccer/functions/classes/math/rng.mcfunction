execute store result score RNG swSocc_test run time query gametime

tellraw @a [{"text":"0 "},{"score":{"name":"RNG","objective":"swSocc_test"}}]

scoreboard players set C_314159 swSocc_C 314159
scoreboard players set C_271828 swSocc_C 2718281

scoreboard players operation RNG swSocc_test *= C_314159 swSocc_C
scoreboard players operation RNG swSocc_test *= C_314159 swSocc_C

scoreboard players operation RNG swSocc_test *= C_271828 swSocc_C
scoreboard players operation RNG swSocc_test *= C_271828 swSocc_C

scoreboard players operation RNG swSocc_test *= RNG swSocc_test

tellraw @a [{"text":"1 "},{"score":{"name":"RNG","objective":"swSocc_test"}}]
