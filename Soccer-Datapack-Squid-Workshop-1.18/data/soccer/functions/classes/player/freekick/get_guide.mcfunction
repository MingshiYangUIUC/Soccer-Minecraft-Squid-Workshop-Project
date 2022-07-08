# use Sspin and Tspin to get xyz spin. of @s. Given player rotation is stored in Kick or guide.
# side spin is just wy.

execute store result score @s swSocc_r0 run data get entity @s Rotation[0] 10000
execute store result score @s swSocc_r1 run data get entity @s Rotation[1] 10000

# z comp is sin(r0), x comp is cos(r0)
scoreboard players operation sinin swSocc_V = @s swSocc_r0
function soccer:classes/math/sindeg
scoreboard players operation u_wz swSocc_V = sinout swSocc_V

scoreboard players operation cosin swSocc_V = @s swSocc_r0
function soccer:classes/math/cosdeg
scoreboard players operation u_wx swSocc_V = cosout swSocc_V

scoreboard players operation u_wx swSocc_V *= Tspin swSocc_V
scoreboard players operation u_wx swSocc_V /= C_100 swSocc_C
scoreboard players operation u_wy swSocc_V = Sspin swSocc_V
scoreboard players operation u_wy swSocc_V *= C_100 swSocc_C
scoreboard players operation u_wz swSocc_V *= Tspin swSocc_V
scoreboard players operation u_wz swSocc_V /= C_100 swSocc_C

#tellraw @s [{"text":"X: "},{"score":{"name": "u_wx","objective": "swSocc_V"}},{"text":" Y: "},{"score":{"name": "u_wy","objective": "swSocc_V"}},{"text":" Z: "},{"score":{"name": "u_wz","objective": "swSocc_V"}}]
scoreboard players operation @s swSocc_wx = u_wx swSocc_V
scoreboard players operation @s swSocc_wy = u_wy swSocc_V
scoreboard players operation @s swSocc_wz = u_wz swSocc_V