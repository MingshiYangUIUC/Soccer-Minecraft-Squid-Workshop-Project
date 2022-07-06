scoreboard players operation xtp swSocc_V = @s swSocc_vx
scoreboard players operation ytp swSocc_V = @s swSocc_vy
scoreboard players operation ztp swSocc_V = @s swSocc_vz

scoreboard players operation xtp swSocc_V /= C_2 swSocc_C
scoreboard players operation ytp swSocc_V /= C_2 swSocc_C
scoreboard players operation ztp swSocc_V /= C_2 swSocc_C

### positive
execute if score ztp swSocc_V matches 200000..399999 at @s run tp @s ~ ~ ~2
execute if score ztp swSocc_V matches 200000..399999 run scoreboard players remove ztp swSocc_V 200000
execute if score ztp swSocc_V matches 100000..199999 at @s run tp @s ~ ~ ~1
execute if score ztp swSocc_V matches 100000..199999 run scoreboard players remove ztp swSocc_V 100000
execute if score ztp swSocc_V matches 50000..99999 at @s run tp @s ~ ~ ~0.5
execute if score ztp swSocc_V matches 50000..99999 run scoreboard players remove ztp swSocc_V 50000
execute if score ztp swSocc_V matches 25000..50000 at @s run tp @s ~ ~ ~0.25
execute if score ztp swSocc_V matches 25000..50000 run scoreboard players remove ztp swSocc_V 25000
execute if score ztp swSocc_V matches 12500..24999 at @s run tp @s ~ ~ ~0.125
execute if score ztp swSocc_V matches 12500..24999 run scoreboard players remove ztp swSocc_V 12500
execute if score ztp swSocc_V matches 6250..12499 at @s run tp @s ~ ~ ~0.0625
execute if score ztp swSocc_V matches 6250..12499 run scoreboard players remove ztp swSocc_V 6250
execute if score ztp swSocc_V matches 3125..6249 at @s run tp @s ~ ~ ~0.03125
execute if score ztp swSocc_V matches 3125..6249 run scoreboard players remove ztp swSocc_V 3125
execute if score ztp swSocc_V matches 1562..3124 at @s run tp @s ~ ~ ~0.015625
execute if score ztp swSocc_V matches 1562..3124 run scoreboard players remove ztp swSocc_V 1562
execute if score ztp swSocc_V matches 781..1561 at @s run tp @s ~ ~ ~0.0078125
execute if score ztp swSocc_V matches 781..1561 run scoreboard players remove ztp swSocc_V 781
execute if score ztp swSocc_V matches 390..780 at @s run tp @s ~ ~ ~0.00390625
execute if score ztp swSocc_V matches 390..780 run scoreboard players remove ztp swSocc_V 390
execute if score ztp swSocc_V matches 195..389 at @s run tp @s ~ ~ ~0.00195313
execute if score ztp swSocc_V matches 195..389 run scoreboard players remove ztp swSocc_V 195
execute if score ztp swSocc_V matches 97..194 at @s run tp @s ~ ~ ~0.00097656
execute if score ztp swSocc_V matches 97..194 run scoreboard players remove ztp swSocc_V 97

execute if score xtp swSocc_V matches 200000..399999 at @s run tp @s ~2 ~ ~
execute if score xtp swSocc_V matches 200000..399999 run scoreboard players remove xtp swSocc_V 200000
execute if score xtp swSocc_V matches 100000..199999 at @s run tp @s ~1 ~ ~
execute if score xtp swSocc_V matches 100000..199999 run scoreboard players remove xtp swSocc_V 100000
execute if score xtp swSocc_V matches 50000..99999 at @s run tp @s ~0.5 ~ ~
execute if score xtp swSocc_V matches 50000..99999 run scoreboard players remove xtp swSocc_V 50000
execute if score xtp swSocc_V matches 25000..50000 at @s run tp @s ~0.25 ~ ~
execute if score xtp swSocc_V matches 25000..50000 run scoreboard players remove xtp swSocc_V 25000
execute if score xtp swSocc_V matches 12500..24999 at @s run tp @s ~0.125 ~ ~
execute if score xtp swSocc_V matches 12500..24999 run scoreboard players remove xtp swSocc_V 12500
execute if score xtp swSocc_V matches 6250..12499 at @s run tp @s ~0.0625 ~ ~
execute if score xtp swSocc_V matches 6250..12499 run scoreboard players remove xtp swSocc_V 6250
execute if score xtp swSocc_V matches 3125..6249 at @s run tp @s ~0.03125 ~ ~
execute if score xtp swSocc_V matches 3125..6249 run scoreboard players remove xtp swSocc_V 3125
execute if score xtp swSocc_V matches 1562..3124 at @s run tp @s ~0.015625 ~ ~
execute if score xtp swSocc_V matches 1562..3124 run scoreboard players remove xtp swSocc_V 1562
execute if score xtp swSocc_V matches 781..1561 at @s run tp @s ~0.0078125 ~ ~
execute if score xtp swSocc_V matches 781..1561 run scoreboard players remove xtp swSocc_V 781
execute if score xtp swSocc_V matches 390..780 at @s run tp @s ~0.00390625 ~ ~
execute if score xtp swSocc_V matches 390..780 run scoreboard players remove xtp swSocc_V 390
execute if score xtp swSocc_V matches 195..389 at @s run tp @s ~0.00195313 ~ ~
execute if score xtp swSocc_V matches 195..389 run scoreboard players remove xtp swSocc_V 195
execute if score xtp swSocc_V matches 97..194 at @s run tp @s ~0.00097656 ~ ~
execute if score xtp swSocc_V matches 97..194 run scoreboard players remove xtp swSocc_V 97

execute if score ytp swSocc_V matches 200000..399999 at @s run tp @s ~ ~2 ~
execute if score ytp swSocc_V matches 200000..399999 run scoreboard players remove ytp swSocc_V 200000
execute if score ytp swSocc_V matches 100000..199999 at @s run tp @s ~ ~1 ~
execute if score ytp swSocc_V matches 100000..199999 run scoreboard players remove ytp swSocc_V 100000
execute if score ytp swSocc_V matches 50000..99999 at @s run tp @s ~ ~0.5 ~
execute if score ytp swSocc_V matches 50000..99999 run scoreboard players remove ytp swSocc_V 50000
execute if score ytp swSocc_V matches 25000..50000 at @s run tp @s ~ ~0.25 ~
execute if score ytp swSocc_V matches 25000..50000 run scoreboard players remove ytp swSocc_V 25000
execute if score ytp swSocc_V matches 12500..24999 at @s run tp @s ~ ~0.125 ~
execute if score ytp swSocc_V matches 12500..24999 run scoreboard players remove ytp swSocc_V 12500
execute if score ytp swSocc_V matches 6250..12499 at @s run tp @s ~ ~0.0625 ~
execute if score ytp swSocc_V matches 6250..12499 run scoreboard players remove ytp swSocc_V 6250
execute if score ytp swSocc_V matches 3125..6249 at @s run tp @s ~ ~0.03125 ~
execute if score ytp swSocc_V matches 3125..6249 run scoreboard players remove ytp swSocc_V 3125
execute if score ytp swSocc_V matches 1562..3124 at @s run tp @s ~ ~0.015625 ~
execute if score ytp swSocc_V matches 1562..3124 run scoreboard players remove ytp swSocc_V 1562
execute if score ytp swSocc_V matches 781..1561 at @s run tp @s ~ ~0.0078125 ~
execute if score ytp swSocc_V matches 781..1561 run scoreboard players remove ytp swSocc_V 781
execute if score ytp swSocc_V matches 390..780 at @s run tp @s ~ ~0.00390625 ~
execute if score ytp swSocc_V matches 390..780 run scoreboard players remove ytp swSocc_V 390
execute if score ytp swSocc_V matches 195..389 at @s run tp @s ~ ~0.00195313 ~
execute if score ytp swSocc_V matches 195..389 run scoreboard players remove ytp swSocc_V 195
execute if score ytp swSocc_V matches 97..194 at @s run tp @s ~ ~0.00097656 ~
execute if score ytp swSocc_V matches 97..194 run scoreboard players remove ytp swSocc_V 97

### negative
execute if score ztp swSocc_V matches -399999..-200000 at @s run tp @s ~ ~ ~-2
execute if score ztp swSocc_V matches -399999..-200000 run scoreboard players add ztp swSocc_V 200000
execute if score ztp swSocc_V matches -199999..-100000 at @s run tp @s ~ ~ ~-1
execute if score ztp swSocc_V matches -199999..-100000 run scoreboard players add ztp swSocc_V 100000
execute if score ztp swSocc_V matches -99999..-50000 at @s run tp @s ~ ~ ~-0.5
execute if score ztp swSocc_V matches -99999..-50000 run scoreboard players add ztp swSocc_V 50000
execute if score ztp swSocc_V matches -50000..-25000 at @s run tp @s ~ ~ ~-0.25
execute if score ztp swSocc_V matches -50000..-25000 run scoreboard players add ztp swSocc_V 25000
execute if score ztp swSocc_V matches -24999..-12500 at @s run tp @s ~ ~ ~-0.125
execute if score ztp swSocc_V matches -24999..-12500 run scoreboard players add ztp swSocc_V 12500
execute if score ztp swSocc_V matches -12499..-6250 at @s run tp @s ~ ~ ~-0.0625
execute if score ztp swSocc_V matches -12499..-6250 run scoreboard players add ztp swSocc_V 6250
execute if score ztp swSocc_V matches -6249..-3125 at @s run tp @s ~ ~ ~-0.03125
execute if score ztp swSocc_V matches -6249..-3125 run scoreboard players add ztp swSocc_V 3125
execute if score ztp swSocc_V matches -3124..-1562 at @s run tp @s ~ ~ ~-0.015625
execute if score ztp swSocc_V matches -3124..-1562 run scoreboard players add ztp swSocc_V 1562
execute if score ztp swSocc_V matches -1561..-781 at @s run tp @s ~ ~ ~-0.0078125
execute if score ztp swSocc_V matches -1561..-781 run scoreboard players add ztp swSocc_V 781
execute if score ztp swSocc_V matches -780..-390 at @s run tp @s ~ ~ ~-0.00390625
execute if score ztp swSocc_V matches -780..-390 run scoreboard players add ztp swSocc_V 390
execute if score ztp swSocc_V matches -389..-195 at @s run tp @s ~ ~ ~-0.00195313
execute if score ztp swSocc_V matches -389..-195 run scoreboard players add ztp swSocc_V 195
execute if score ztp swSocc_V matches -194..-97 at @s run tp @s ~ ~ ~-0.00097656
execute if score ztp swSocc_V matches -194..-97 run scoreboard players add ztp swSocc_V 97

execute if score xtp swSocc_V matches -399999..-200000 at @s run tp @s ~-2 ~ ~
execute if score xtp swSocc_V matches -399999..-200000 run scoreboard players add xtp swSocc_V 200000
execute if score xtp swSocc_V matches -199999..-100000 at @s run tp @s ~-1 ~ ~
execute if score xtp swSocc_V matches -199999..-100000 run scoreboard players add xtp swSocc_V 100000
execute if score xtp swSocc_V matches -99999..-50000 at @s run tp @s ~-0.5 ~ ~
execute if score xtp swSocc_V matches -99999..-50000 run scoreboard players add xtp swSocc_V 50000
execute if score xtp swSocc_V matches -50000..-25000 at @s run tp @s ~-0.25 ~ ~
execute if score xtp swSocc_V matches -50000..-25000 run scoreboard players add xtp swSocc_V 25000
execute if score xtp swSocc_V matches -24999..-12500 at @s run tp @s ~-0.125 ~ ~
execute if score xtp swSocc_V matches -24999..-12500 run scoreboard players add xtp swSocc_V 12500
execute if score xtp swSocc_V matches -12499..-6250 at @s run tp @s ~-0.0625 ~ ~
execute if score xtp swSocc_V matches -12499..-6250 run scoreboard players add xtp swSocc_V 6250
execute if score xtp swSocc_V matches -6249..-3125 at @s run tp @s ~-0.03125 ~ ~
execute if score xtp swSocc_V matches -6249..-3125 run scoreboard players add xtp swSocc_V 3125
execute if score xtp swSocc_V matches -3124..-1562 at @s run tp @s ~-0.015625 ~ ~
execute if score xtp swSocc_V matches -3124..-1562 run scoreboard players add xtp swSocc_V 1562
execute if score xtp swSocc_V matches -1561..-781 at @s run tp @s ~-0.0078125 ~ ~
execute if score xtp swSocc_V matches -1561..-781 run scoreboard players add xtp swSocc_V 781
execute if score xtp swSocc_V matches -780..-390 at @s run tp @s ~-0.00390625 ~ ~
execute if score xtp swSocc_V matches -780..-390 run scoreboard players add xtp swSocc_V 390
execute if score xtp swSocc_V matches -389..-195 at @s run tp @s ~-0.00195313 ~ ~
execute if score xtp swSocc_V matches -389..-195 run scoreboard players add xtp swSocc_V 195
execute if score xtp swSocc_V matches -194..-97 at @s run tp @s ~-0.00097656 ~ ~
execute if score xtp swSocc_V matches -194..-97 run scoreboard players add xtp swSocc_V 97

execute if score ytp swSocc_V matches -399999..-200000 at @s run tp @s ~ ~-2 ~
execute if score ytp swSocc_V matches -399999..-200000 run scoreboard players add ytp swSocc_V 200000
execute if score ytp swSocc_V matches -199999..-100000 at @s run tp @s ~ ~-1 ~
execute if score ytp swSocc_V matches -199999..-100000 run scoreboard players add ytp swSocc_V 100000
execute if score ytp swSocc_V matches -99999..-50000 at @s run tp @s ~ ~-0.5 ~
execute if score ytp swSocc_V matches -99999..-50000 run scoreboard players add ytp swSocc_V 50000
execute if score ytp swSocc_V matches -50000..-25000 at @s run tp @s ~ ~-0.25 ~
execute if score ytp swSocc_V matches -50000..-25000 run scoreboard players add ytp swSocc_V 25000
execute if score ytp swSocc_V matches -24999..-12500 at @s run tp @s ~ ~-0.125 ~
execute if score ytp swSocc_V matches -24999..-12500 run scoreboard players add ytp swSocc_V 12500
execute if score ytp swSocc_V matches -12499..-6250 at @s run tp @s ~ ~-0.0625 ~
execute if score ytp swSocc_V matches -12499..-6250 run scoreboard players add ytp swSocc_V 6250
execute if score ytp swSocc_V matches -6249..-3125 at @s run tp @s ~ ~-0.03125 ~
execute if score ytp swSocc_V matches -6249..-3125 run scoreboard players add ytp swSocc_V 3125
execute if score ytp swSocc_V matches -3124..-1562 at @s run tp @s ~ ~-0.015625 ~
execute if score ytp swSocc_V matches -3124..-1562 run scoreboard players add ytp swSocc_V 1562
execute if score ytp swSocc_V matches -1561..-781 at @s run tp @s ~ ~-0.0078125 ~
execute if score ytp swSocc_V matches -1561..-781 run scoreboard players add ytp swSocc_V 781
execute if score ytp swSocc_V matches -780..-390 at @s run tp @s ~ ~-0.00390625 ~
execute if score ytp swSocc_V matches -780..-390 run scoreboard players add ytp swSocc_V 390
execute if score ytp swSocc_V matches -389..-195 at @s run tp @s ~ ~-0.00195313 ~
execute if score ytp swSocc_V matches -389..-195 run scoreboard players add ytp swSocc_V 195
execute if score ytp swSocc_V matches -194..-97 at @s run tp @s ~ ~-0.00097656 ~
execute if score ytp swSocc_V matches -194..-97 run scoreboard players add ytp swSocc_V 97