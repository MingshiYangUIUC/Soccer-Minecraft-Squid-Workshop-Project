# input is sinin swSocc_V
# out is sinout swSocc_V

scoreboard players operation #vIn swMath_V = sinin swSocc_V
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/sin_rad
scoreboard players operation sinout swSocc_V = #vOut swMath_V