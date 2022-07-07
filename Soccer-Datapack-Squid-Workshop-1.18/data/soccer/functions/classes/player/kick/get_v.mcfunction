scoreboard players reset @s swSocc_Rclick

execute store result score @s swSocc_r0 run data get entity @s Rotation[0] 10000
execute store result score @s swSocc_r1 run data get entity @s Rotation[1] 10000



# x comp is -sin(r0), z comp is cos(r0)
scoreboard players operation sinin swSocc_V = @s swSocc_r0
function soccer:classes/math/sindeg
scoreboard players operation sinout swSocc_V *= C_-1 swSocc_C
scoreboard players operation u_vx swSocc_V = sinout swSocc_V

scoreboard players operation cosin swSocc_V = @s swSocc_r0
function soccer:classes/math/cosdeg
scoreboard players operation u_vz swSocc_V = cosout swSocc_V


#tellraw @a [{"text":"-sin "},{"score":{"name":"sinout","objective":"swSocc_V"}},{"text":" +cos "},{"score":{"name":"cosout","objective":"swSocc_V"}}]

# y comp: 
# y comp: y = sin(-(r1)+20) [0,90] for now

scoreboard players operation sinin swSocc_V = @s swSocc_r1
scoreboard players operation sinin swSocc_V *= C_-1 swSocc_C
scoreboard players add sinin swSocc_V 30000
execute if score sinin swSocc_V matches 900001.. run scoreboard players set sinin swSocc_V 900000
execute if score sinin swSocc_V matches ..0 run scoreboard players set sinin swSocc_V 0
scoreboard players operation cosin swSocc_V = sinin swSocc_V
function soccer:classes/math/sindeg
function soccer:classes/math/cosdeg
scoreboard players operation u_vy swSocc_V = sinout swSocc_V

scoreboard players operation u_vx swSocc_V *= cosout swSocc_V
scoreboard players operation u_vz swSocc_V *= cosout swSocc_V

scoreboard players operation u_vx swSocc_V /= C_10000 swSocc_C
scoreboard players operation u_vz swSocc_V /= C_10000 swSocc_C
#tellraw @a [{"text":"y "},{"score":{"name":"sinout","objective":"swSocc_V"}}]

# u_vxyz are unit vectors. multiply with power to get vx,vy,vz



scoreboard players operation u_vx swSocc_V *= @s swSocc_power
scoreboard players operation u_vy swSocc_V *= @s swSocc_power
scoreboard players operation u_vz swSocc_V *= @s swSocc_power

execute if score u_vy swSocc_V matches ..20000 run scoreboard players set u_vy swSocc_V 20000

data merge entity @e[tag=swSocc_ball,limit=1,sort=nearest] {Marker:0b}

execute as @e[tag=swSocc_ball] run function soccer:classes/motion/reset

scoreboard players operation @e[tag=swSocc_ball] swSocc_vx = u_vx swSocc_V
scoreboard players operation @e[tag=swSocc_ball] swSocc_vy = u_vy swSocc_V
scoreboard players operation @e[tag=swSocc_ball] swSocc_vz = u_vz swSocc_V