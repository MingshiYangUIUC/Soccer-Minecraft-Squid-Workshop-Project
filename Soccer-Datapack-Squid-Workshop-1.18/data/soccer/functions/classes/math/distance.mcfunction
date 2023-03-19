#@s is tagged d1, only one d2 at a time
scoreboard players set Dout swSocc_V 99999999

execute store result score D00 swSocc_V run data get entity @s Pos[0] 10000
execute store result score D01 swSocc_V run data get entity @s Pos[1] 10000
execute store result score D02 swSocc_V run data get entity @s Pos[2] 10000

scoreboard players operation D01 swSocc_V += Y_addon swSocc_V

execute store result score D10 swSocc_V run data get entity @e[type=armor_stand,tag=swSocc_d2,sort=nearest,limit=1] Pos[0] 10000
execute store result score D11 swSocc_V run data get entity @e[type=armor_stand,tag=swSocc_d2,sort=nearest,limit=1] Pos[1] 10000
execute store result score D12 swSocc_V run data get entity @e[type=armor_stand,tag=swSocc_d2,sort=nearest,limit=1] Pos[2] 10000

scoreboard players operation D00 swSocc_V -= D10 swSocc_V
scoreboard players operation D01 swSocc_V -= D11 swSocc_V
scoreboard players operation D02 swSocc_V -= D12 swSocc_V

scoreboard players operation D00 swSocc_V *= D00 swSocc_V
scoreboard players operation D01 swSocc_V *= D01 swSocc_V
scoreboard players operation D02 swSocc_V *= D02 swSocc_V

scoreboard players operation #vIn swMath_V = D00 swSocc_V
scoreboard players operation #vIn swMath_V += D01 swSocc_V
scoreboard players operation #vIn swMath_V += D02 swSocc_V

function math:classes/core/operations/sqrt
#execute unless entity @e[type=armor_stand,tag=swSocc_d2,distance=..3,limit=1] run scoreboard players set @s swSocc_dist 99999999
scoreboard players operation Dout swSocc_V = #vOut swMath_V

