summon minecraft:armor_stand ~ ~ ~ {Tags:["swSocc_ball"],ArmorItems:[{},{},{},{}],Small:1,Invisible:1,Pose:{Head:[180.0f,0.0f,0.0f]},CustomName:'"Ball"',CustomNameVisible:0}
scoreboard players set @e[tag=swSocc_ball] swSocc_time_dribble 0

summon minecraft:armor_stand ~ ~ ~ {Tags:["swSocc_ball_pivot"],NoGravity:1,Marker:1,ArmorItems:[{},{},{},{id:"minecraft:stone_button",Count:1b,tag:{CustomModelData:5}}],Small:1,Invisible:1,Pose:{Head:[180.0f,0.0f,0.0f]},CustomName:'"Ball"',CustomNameVisible:0}
