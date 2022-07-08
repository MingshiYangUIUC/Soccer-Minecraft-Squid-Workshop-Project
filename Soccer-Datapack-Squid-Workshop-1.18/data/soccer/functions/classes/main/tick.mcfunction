execute as @a at @s if entity @e[tag=swSocc_ball,distance=..0.7,scores={swSocc_time=1..}] run function soccer:classes/player/kick/kick
#execute as @a at @s if entity @e[tag=swSocc_ball,distance=..1,scores={swSocc_time=1..}] run function soccer:classes/player/kick/kick

execute as @e[tag=swSocc_ball,tag=!swSocc_marker] at @s run function soccer:classes/motion/move_test

execute as @e[tag=swSocc_ball] if score @s swSocc_time_dribble matches 0 at @s if entity @a[nbt={SelectedItem:{tag:{dribble:1,tackle:0}}},distance=..3] run function soccer:classes/player/dribble/gain

execute as @a[scores={swSocc_Rclick=1..},nbt={SelectedItem:{tag:{kick:1}}}] run function soccer:classes/player/power/record

execute as @a[scores={swSocc_time_back=0},nbt={SelectedItem:{tag:{dribble:1,tackle:0}}}] run tag @s remove swSocc_reversed
execute as @a[scores={swSocc_time_back=0},nbt={SelectedItem:{tag:{dribble:1,tackle:0}}}] run title @s actionbar {"text":"FWD","color":"white"}
execute as @a[scores={swSocc_Rclick=1},nbt={SelectedItem:{tag:{dribble:1,tackle:0}}}] run function soccer:classes/player/dribble/back



scoreboard players remove @a[scores={swSocc_Rclick=1..}] swSocc_Rclick 1
scoreboard players remove @a[scores={swSocc_time_back=1..}] swSocc_time_back 1
scoreboard players remove @e[tag=swSocc_ball,scores={swSocc_time_dribble=1..}] swSocc_time_dribble 1