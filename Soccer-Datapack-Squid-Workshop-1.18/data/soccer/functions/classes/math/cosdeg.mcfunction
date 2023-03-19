# input is cosin swSocc_V
# out is cosout swSocc_V

scoreboard players operation #vIn swMath_V = cosin swSocc_V
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosout swSocc_V = #vOut swMath_V