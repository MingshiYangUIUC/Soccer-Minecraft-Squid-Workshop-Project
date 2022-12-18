# input: wx,wy,wz 
# input: vx,vy,vz 
# output: fx,fy,fz 3 direction acceleration as Oi,Oj,Ok
# force axis = spin axis X motion axis
# function soccer:classes/math/

# execute as @s at @s

scoreboard players set Radius swSocc_C 1500

# omega
scoreboard players operation Ai swSocc_V = @s swSocc_wx
scoreboard players operation Aj swSocc_V = @s swSocc_wy
scoreboard players operation Ak swSocc_V = @s swSocc_wz

function soccer:classes/math/unitvector

scoreboard players operation Aip swSocc_V = Oi swSocc_V
scoreboard players operation Ajp swSocc_V = Oj swSocc_V
scoreboard players operation Akp swSocc_V = Ok swSocc_V

# save magnitude of spin
scoreboard players operation Omagp swSocc_V = Omag swSocc_V


# v
scoreboard players operation Ai swSocc_V = @s swSocc_vx0
scoreboard players operation Aj swSocc_V = @s swSocc_vy0
scoreboard players operation Ak swSocc_V = @s swSocc_vz0

# set -15681 as 0
execute if score Aj swSocc_V matches -15681 run scoreboard players set Aj swSocc_V 0

function soccer:classes/math/unitvector

scoreboard players operation Ai swSocc_V = Aip swSocc_V
scoreboard players operation Aj swSocc_V = Ajp swSocc_V
scoreboard players operation Ak swSocc_V = Akp swSocc_V

scoreboard players operation Bi swSocc_V = Oi swSocc_V
scoreboard players operation Bj swSocc_V = Oj swSocc_V
scoreboard players operation Bk swSocc_V = Ok swSocc_V

#tellraw @a [{"text":"omega "},{"score":{"name":"Aip","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Ajp","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Akp","objective":"swSocc_V"}}]

#tellraw @a [{"text":"v "},{"score":{"name":"Bi","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Bj","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Bk","objective":"swSocc_V"}}]


function soccer:classes/math/cross

scoreboard players operation Oi swSocc_V /= C_10000 swSocc_C
scoreboard players operation Oj swSocc_V /= C_10000 swSocc_C
scoreboard players operation Ok swSocc_V /= C_10000 swSocc_C

#tellraw @a [{"text":"f dir "},{"score":{"name":"Oi","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Oj","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Ok","objective":"swSocc_V"}}]



# get delta v
scoreboard players operation dV swSocc_V = Omagp swSocc_V
scoreboard players operation dV swSocc_V *= Radius swSocc_C
scoreboard players operation dV swSocc_V /= C_10000 swSocc_C

# delta v squared
scoreboard players operation dV2 swSocc_V = dV swSocc_V
scoreboard players operation dV2 swSocc_V /= C_100 swSocc_C
scoreboard players operation dV2 swSocc_V *= dV2 swSocc_V
#scoreboard players operation dV2 swSocc_V /= C_100 swSocc_C

#tellraw @a [{"text":"fmag dv "},{"score":{"name":"dV","objective":"swSocc_V"}},{"text":" dv2 "},{"score":{"name":"dV2","objective":"swSocc_V"}}]

# multiplier to change f to a, incorporate mass, density, etc here
scoreboard players set Magnus swSocc_C 6000

# get f
scoreboard players operation Oi swSocc_V /= C_100 swSocc_C
scoreboard players operation Oj swSocc_V /= C_100 swSocc_C
scoreboard players operation Ok swSocc_V /= C_100 swSocc_C
scoreboard players operation Oi swSocc_V *= dV2 swSocc_V
scoreboard players operation Oj swSocc_V *= dV2 swSocc_V
scoreboard players operation Ok swSocc_V *= dV2 swSocc_V
scoreboard players operation Oi swSocc_V /= C_100 swSocc_C
scoreboard players operation Oj swSocc_V /= C_100 swSocc_C
scoreboard players operation Ok swSocc_V /= C_100 swSocc_C

scoreboard players operation Oi swSocc_V *= Magnus swSocc_C
scoreboard players operation Oj swSocc_V *= Magnus swSocc_C
scoreboard players operation Ok swSocc_V *= Magnus swSocc_C
scoreboard players operation Oi swSocc_V /= C_10000 swSocc_C
scoreboard players operation Oj swSocc_V /= C_10000 swSocc_C
scoreboard players operation Ok swSocc_V /= C_10000 swSocc_C

#tellraw @a [{"text":"f result "},{"score":{"name":"Oi","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Oj","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Ok","objective":"swSocc_V"}}]
