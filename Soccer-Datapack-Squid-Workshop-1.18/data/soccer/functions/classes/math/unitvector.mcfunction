# get unit vector of Aijk
# return Oijk's V
# ALSO RETURN magnitude!


######## OVERFLOW?

scoreboard players operation Oi swSocc_V = Ai swSocc_V
scoreboard players operation Oj swSocc_V = Aj swSocc_V
scoreboard players operation Ok swSocc_V = Ak swSocc_V

#tellraw @a [{"text":"unit 0 "},{"score":{"name":"Oi","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Oj","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Ok","objective":"swSocc_V"}}]


function soccer:classes/math/magnitude


scoreboard players operation Oi swSocc_V *= C_100 swSocc_C
scoreboard players operation Oj swSocc_V *= C_100 swSocc_C
scoreboard players operation Ok swSocc_V *= C_100 swSocc_C

scoreboard players operation Oi swSocc_V /= Omag swSocc_V
scoreboard players operation Oj swSocc_V /= Omag swSocc_V
scoreboard players operation Ok swSocc_V /= Omag swSocc_V

scoreboard players operation Oi swSocc_V *= C_100 swSocc_C
scoreboard players operation Oj swSocc_V *= C_100 swSocc_C
scoreboard players operation Ok swSocc_V *= C_100 swSocc_C

#tellraw @a [{"text":"unit 1 "},{"score":{"name":"Oi","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Oj","objective":"swSocc_V"}},{"text":" "},{"score":{"name":"Ok","objective":"swSocc_V"}}]
#tellraw @a [{"text":"unit mag "},{"score":{"name":"Omag","objective":"swSocc_V"}}]