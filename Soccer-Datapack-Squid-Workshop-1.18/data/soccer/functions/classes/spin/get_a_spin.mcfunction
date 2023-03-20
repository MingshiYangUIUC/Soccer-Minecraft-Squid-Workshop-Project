# input: wx,wy,wz 
# input: vx,vy,vz 
# output: fx,fy,fz 3 direction acceleration as Oi,Oj,Ok
# force axis = spin axis X motion axis
# function soccer:classes/math/

# execute as @s at @s

scoreboard players set Radius swSocc_C 1500

# omega
scoreboard players operation #vAi swMath_V = @s swSocc_wx
scoreboard players operation #vAj swMath_V = @s swSocc_wy
scoreboard players operation #vAk swMath_V = @s swSocc_wz

function math:classes/core/vector/unit

scoreboard players operation Aip swSocc_V = #vOi swMath_V
scoreboard players operation Ajp swSocc_V = #vOj swMath_V
scoreboard players operation Akp swSocc_V = #vOk swMath_V

# save magnitude of spin
scoreboard players operation Omagp swSocc_V = #vMag swMath_V


# v
#execute if entity @s[tag=swSocc_guide] run scoreboard players operation #vAi swMath_V = @s swSocc_vx
#execute if entity @s[tag=swSocc_guide] run scoreboard players operation #vAj swMath_V = @s swSocc_vy
#execute if entity @s[tag=swSocc_guide] run scoreboard players operation #vAk swMath_V = @s swSocc_vz
#execute unless entity @s[tag=swSocc_guide] run scoreboard players operation #vAi swMath_V = @s swSocc_vx0
#execute unless entity @s[tag=swSocc_guide] run scoreboard players operation #vAj swMath_V = @s swSocc_vy0
#execute unless entity @s[tag=swSocc_guide] run scoreboard players operation #vAk swMath_V = @s swSocc_vz0
scoreboard players operation #vAi swMath_V = @s swSocc_vx0
scoreboard players operation #vAj swMath_V = @s swSocc_vy0
scoreboard players operation #vAk swMath_V = @s swSocc_vz0
#tellraw @a [{"text":"  vx0 "},{"score":{"name":"@s","objective":"swSocc_vx0"}}]

# set -15681 as 0
execute if score #vAj swMath_V matches -15681 run scoreboard players set #vAj swMath_V 0

function math:classes/core/vector/unit

#tellraw @a [{"text":"i0: "},{"score":{"name": "@s","objective": "swSocc_vx0"}}]
#tellraw @a [{"text":"j0: "},{"score":{"name": "@s","objective": "swSocc_vy0"}}]
#tellraw @a [{"text":"k0: "},{"score":{"name": "@s","objective": "swSocc_vz0"}}]
#tellraw @a [{"text":"M: "},{"score":{"name": "#vMag","objective": "swMath_V"}}]
#tellraw @a [{"text":"i: "},{"score":{"name": "#vOi","objective": "swMath_V"}}]
#tellraw @a [{"text":"j: "},{"score":{"name": "#vOj","objective": "swMath_V"}}]
#tellraw @a [{"text":"k: "},{"score":{"name": "#vOk","objective": "swMath_V"}}]


scoreboard players operation #vAi swMath_V = Aip swSocc_V
scoreboard players operation #vAj swMath_V = Ajp swSocc_V
scoreboard players operation #vAk swMath_V = Akp swSocc_V

scoreboard players operation #vBi swMath_V = #vOi swMath_V
scoreboard players operation #vBj swMath_V = #vOj swMath_V
scoreboard players operation #vBk swMath_V = #vOk swMath_V

#tellraw @a [{"text":"OOj: "},{"score":{"name": "#vAi","objective": "swMath_V"}}]
#tellraw @a [{"text":"OOj: "},{"score":{"name": "#vBk","objective": "swMath_V"}}]
#tellraw @a [{"text":"omega "},{"score":{"name":"Aip","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Ajp","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Akp","objective":"swSocc_V"}}]

#tellraw @a [{"text":"v "},{"score":{"name":"Bi","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Bj","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Bk","objective":"swSocc_V"}}]


function math:classes/core/vector/cross

#tellraw @a [{"text":"OOjF: "},{"score":{"name": "#vOj","objective": "swMath_V"}}]
scoreboard players operation Oi swSocc_V = #vOi swMath_V
scoreboard players operation Oj swSocc_V = #vOj swMath_V
scoreboard players operation Ok swSocc_V = #vOk swMath_V

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

#tellraw @a [{"text":"dV2: "},{"score":{"name": "dV2","objective": "swSocc_V"}}]

#tellraw @a [{"text":"fmag dv "},{"score":{"name":"dV","objective":"swSocc_V"}},{"text":" dv2 "},{"score":{"name":"dV2","objective":"swSocc_V"}}]

# multiplier to change f to a, incorporate mass, density, etc here
scoreboard players set Magnus swSocc_C 6000

#tellraw @a [{"text":"i: "},{"score":{"name": "Oi","objective": "swSocc_V"}}]

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
