execute store result score @s swSocc_r0 run data get entity @s Rotation[0] 10000
execute store result score @s swSocc_r1 run data get entity @s Rotation[1] 10000

# dribble
execute if entity @s[nbt={SelectedItem:{tag:{dribble:1}}}] run scoreboard players set @s swSocc_r1 30000
execute if entity @s[tag=swSocc_reversed] run scoreboard players add @s swSocc_r0 1800000

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

scoreboard players operation P_temp swSocc_V = @s swSocc_power

# dribble
execute if entity @s[nbt={SelectedItem:{tag:{dribble:1}}}] run scoreboard players set @s swSocc_power 8
#execute if entity @s[tag=swSocc_tackle_success,nbt={SelectedItem:{tag:{dribble:1}}}] run scoreboard players set @s swSocc_power 4

scoreboard players operation u_vx swSocc_V *= @s swSocc_power
scoreboard players operation u_vy swSocc_V *= @s swSocc_power
scoreboard players operation u_vz swSocc_V *= @s swSocc_power


scoreboard players operation G_vx swSocc_V = u_vx swSocc_V
scoreboard players operation G_vy swSocc_V = u_vy swSocc_V
scoreboard players operation G_vz swSocc_V = u_vz swSocc_V

scoreboard players set G_vx0 swSocc_V 1
scoreboard players set G_vy0 swSocc_V 1
scoreboard players set G_vz0 swSocc_V 1


function soccer:classes/player/freekick/get_guide

scoreboard players operation G_wx swSocc_V = u_wx swSocc_V
scoreboard players operation G_wy swSocc_V = u_wy swSocc_V
scoreboard players operation G_wz swSocc_V = u_wz swSocc_V

function soccer:classes/player/kick_guide