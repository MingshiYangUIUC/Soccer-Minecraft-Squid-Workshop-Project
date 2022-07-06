scoreboard players operation SQRT4 swSocc_V = SQRT0 swSocc_V
scoreboard players operation SQRT4 swSocc_V /= SQRT1 swSocc_V
scoreboard players operation SQRT4 swSocc_V += SQRT1 swSocc_V
scoreboard players operation SQRT4 swSocc_V /= SQRT3 swSocc_C
scoreboard players operation SQRT2 swSocc_V = SQRT1 swSocc_V
scoreboard players operation SQRT5 swSocc_V = SQRT4 swSocc_V
scoreboard players operation SQRT5 swSocc_V -= SQRT2 swSocc_V
execute if score SQRT5 swSocc_V matches -1..1 run scoreboard players operation SQRTout swSocc_V = SQRT4 swSocc_V
execute unless score SQRT5 swSocc_V matches -1..1 run scoreboard players operation SQRT1 swSocc_V = SQRT4 swSocc_V
execute unless score SQRT5 swSocc_V matches -1..1 run function soccer:classes/math/sqrt_operation