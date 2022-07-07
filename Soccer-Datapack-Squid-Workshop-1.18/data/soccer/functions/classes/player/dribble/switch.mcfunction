execute unless entity @s[tag=swSocc_reversed] run tag @s add swSocc_rev0
execute if entity @s[tag=swSocc_reversed] run tag @s add swSocc_rev1

tag @s[tag=swSocc_rev0] add swSocc_reversed
tag @s[tag=swSocc_rev1] remove swSocc_reversed

tag @s remove swSocc_rev0
tag @s remove swSocc_rev1

title @s[tag=!swSocc_reversed] actionbar {"text":"FWD","color":"white"}
title @s[tag=swSocc_reversed] actionbar {"text":"BCK","color":"white"}

scoreboard players set @s swSocc_Rclick 0