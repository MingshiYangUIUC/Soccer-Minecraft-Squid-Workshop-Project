
give @s minecraft:totem_of_undying{temp:1} 9
summon item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1},Tags:["swSocc_temp"],PickupDelay:0}
data modify entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] Item set from entity @s SelectedItem

execute if score @s swSocc_power matches ..0 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}

execute if score @s swSocc_power matches 1..5 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 6..10 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 11..15 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 16..20 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 21..25 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 26..30 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 31..35 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 36..40 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 41..45 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 46..50 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}

execute if score @s swSocc_power matches 51..55 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 56..60 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 61..65 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 66..70 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 71..75 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 76..80 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 81..85 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 86..90 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 91..95 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"⬛","color":"white","italic":false}]'}}}}
execute if score @s swSocc_power matches 96..100 run data merge entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] {Item:{tag:{display:{Name:'[{"text":"⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛","color":"red","italic":false},{"text":"","color":"white","italic":false}]'}}}}
#execute store result entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] Item.tag.display.Name long 1 run scoreboard players get @s swSocc_power

#execute store result entity @e[type=item,tag=swSocc_temp,limit=1,sort=nearest] Item.tag.display.Name long 1 run data get storage swsocc.name



item replace entity @s weapon.mainhand with air
schedule function soccer:classes/player/power/show_clear 2t