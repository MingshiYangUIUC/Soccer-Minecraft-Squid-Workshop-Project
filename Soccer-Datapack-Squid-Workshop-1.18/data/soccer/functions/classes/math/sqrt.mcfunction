# input is SQRTin swSocc_V

execute if score SQRTin swSocc_V matches ..-1 run scoreboard players set SQRTin swSocc_V 0
scoreboard players operation SQRT0 swSocc_V = SQRTin swSocc_V
scoreboard players set SQRT1 swSocc_V 4000
scoreboard players set SQRT2 swSocc_V 0
#scoreboard players set SQRT3 swSocc_C 2
execute unless score SQRT1 swSocc_V = SQRT2 swSocc_V run function soccer:classes/math/sqrt_operation