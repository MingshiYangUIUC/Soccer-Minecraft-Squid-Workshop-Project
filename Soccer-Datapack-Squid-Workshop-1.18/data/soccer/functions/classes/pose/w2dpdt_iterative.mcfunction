# use xyz omega and current pose to calculate increment of pose parameters

execute store result score pose0 swSocc_pose run data get entity @e[type=armor_stand,tag=swSocc_ball_pivot,limit=1,sort=nearest] Pose.Head[0] 10000
execute store result score pose1 swSocc_pose run data get entity @e[type=armor_stand,tag=swSocc_ball_pivot,limit=1,sort=nearest] Pose.Head[1] 10000
execute store result score pose2 swSocc_pose run data get entity @e[type=armor_stand,tag=swSocc_ball_pivot,limit=1,sort=nearest] Pose.Head[2] 10000


scoreboard players set maxRdt swMath_V 200000000
scoreboard players set DT swMath_V 100000


############ one iteration
scoreboard players operation ws swMath_V = @s swSocc_wy
scoreboard players operation wt swMath_V = @s swSocc_wx
scoreboard players operation wc swMath_V = @s swSocc_wz
scoreboard players operation wc swMath_V *= C_-1 swMath_C

#tellraw @a [{"text":"ws "},{"score":{"objective":"swMath_V","name": "ws"}}]
#tellraw @a [{"text":"wt "},{"score":{"objective":"swMath_V","name": "wt"}}]
#tellraw @a [{"text":"wc "},{"score":{"objective":"swMath_V","name": "wc"}}]

# rescale w
#scoreboard players operation ws swMath_V *= C_10 swSocc_C
#scoreboard players operation wt swMath_V *= C_10 swSocc_C
#scoreboard players operation wc swMath_V *= C_10 swSocc_C

# calculate sin(p1), sin(p2), cos(p1), cos(p2)
scoreboard players operation #vIn swMath_V = pose1 swSocc_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/sin_rad
scoreboard players operation sinp1 swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = pose2 swSocc_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/sin_rad
scoreboard players operation sinp2 swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = pose1 swSocc_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosp1 swMath_V = #vOut swMath_V

scoreboard players operation #vIn swMath_V = pose2 swSocc_pose
function math:classes/core/util/deg2rad
function math:classes/core/util/swap
function math:classes/core/trig/cos_rad
scoreboard players operation cosp2 swMath_V = #vOut swMath_V

#tellraw @a [{"text":"cosp1 "},{"score":{"objective":"swMath_V","name": "cosp1"}}]

# Calculate dp0 dp1 dp2
# calculate the common divider = cosp1
scoreboard players operation CD swMath_V = cosp1 swMath_V
scoreboard players operation CDabs swMath_V = CD swMath_V
execute if score CDabs swMath_V matches ..-1 run scoreboard players operation CDabs swMath_V *= #C_-1 swMath_C

#tellraw @a [{"text":" pose0 "},{"score":{"objective":"swSocc_pose","name": "pose0"}},{"text":" pose1 "},{"score":{"objective":"swSocc_pose","name": "pose1"}},{"text":" pose2 "},{"score":{"objective":"swSocc_pose","name": "pose2"}}]
#tellraw @a [{"text":"CD "},{"score":{"objective":"swMath_V","name": "CD"}}]

# calculate dp0 = (wt*cos(p2) - ws*sin(p2)) / CD
scoreboard players operation dp0 swMath_V = cosp2 swMath_V
scoreboard players operation dp0 swMath_V *= wt swMath_V

scoreboard players operation dp02 swMath_V = sinp2 swMath_V
scoreboard players operation dp02 swMath_V *= ws swMath_V
scoreboard players operation dp0 swMath_V -= dp02 swMath_V

scoreboard players operation dp0 swMath_V /= CD swMath_V

# calculate dp1 = (-ws*cos(p2) - wt*sin(p2)) / CDabs
scoreboard players set dp1 swMath_V 0
scoreboard players operation dp1 swMath_V -= cosp2 swMath_V
scoreboard players operation dp1 swMath_V *= ws swMath_V

scoreboard players operation dp12 swMath_V = sinp2 swMath_V
scoreboard players operation dp12 swMath_V *= wt swMath_V
scoreboard players operation dp1 swMath_V -= dp12 swMath_V

#tellraw @a [{"text":"dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}}]
scoreboard players operation dp1 swMath_V /= CDabs swMath_V
#tellraw @a [{"text":"dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}}]

# calculate dp2 = dp0 * sin(p1) + wc
scoreboard players operation dp2 swMath_V = dp0 swMath_V
scoreboard players operation dp2 swMath_V *= sinp1 swMath_V
scoreboard players operation dp2 swMath_V /= #C_10000 swMath_C
scoreboard players operation dp2 swMath_V += wc swMath_V

#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swMath_V","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swMath_V","name": "dp2"}}]
# unit of dp now is radian/tick, change to degree/tick by *180/pi

# max w is about 1600000 (1500 RPM... certainly possible!) -> max dp 160 rad/s -> 8 rad/tick -> 
# dp is in unit of radian per second, *= 2.8648 to get degree per tick/ full iteration
# max degree per iteration = 6
# max radian per second ~ 2 -> per iteration ~ 0.1
# dt per iteration ~ 0.1/ max(dp) -> 0.0125
# max dp is 20000
# DT = 100000 !!!
# dt' = 100000 * 20000 / max(dp) 

# find max abs value of dp
scoreboard players set maxdp swMath_V 0
scoreboard players operation adp0 swMath_V = dp0 swMath_V
scoreboard players operation adp1 swMath_V = dp1 swMath_V
scoreboard players operation adp2 swMath_V = dp2 swMath_V
execute if score adp0 swMath_V matches ..-1 run scoreboard players operation adp0 swMath_V *= C_-1 swMath_C
execute if score adp1 swMath_V matches ..-1 run scoreboard players operation adp1 swMath_V *= C_-1 swMath_C
execute if score adp2 swMath_V matches ..-1 run scoreboard players operation adp2 swMath_V *= C_-1 swMath_C

scoreboard players operation maxdp swMath_V > adp0 swMath_V
scoreboard players operation maxdp swMath_V > adp1 swMath_V
scoreboard players operation maxdp swMath_V > adp2 swMath_V
#tellraw @a [{"text":"maxdp "},{"score":{"objective":"swMath_V","name": "maxdp"}}]

scoreboard players operation dt swMath_V = maxRdt swMath_V
scoreboard players operation dt swMath_V /= maxdp swMath_V

execute if score dt swMath_V matches ..100 run scoreboard players set dt swMath_V 100
execute if score DT swMath_V < dt swMath_V run scoreboard players operation dt swMath_V = DT swMath_V
#tellraw @a [{"text":"dt' "},{"score":{"objective":"swMath_V","name": "dt"}}]

# change pose by dt increment, dp0/1/2 * dt
scoreboard players operation dp0 swMath_V *= dt swMath_V
scoreboard players operation dp1 swMath_V *= dt swMath_V
scoreboard players operation dp2 swMath_V *= dt swMath_V

scoreboard players operation dp0 swMath_V /= C_10000 swMath_C
scoreboard players operation dp1 swMath_V /= C_10000 swMath_C
scoreboard players operation dp2 swMath_V /= C_10000 swMath_C

#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swMath_V","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swMath_V","name": "dp2"}}]

scoreboard players set r2d swSocc_C 28648

scoreboard players operation dp0 swMath_V /= C_100 swMath_C
scoreboard players operation dp1 swMath_V /= C_100 swMath_C
scoreboard players operation dp2 swMath_V /= C_100 swMath_C

scoreboard players operation dp0 swMath_V *= r2d swSocc_C
scoreboard players operation dp1 swMath_V *= r2d swSocc_C
scoreboard players operation dp2 swMath_V *= r2d swSocc_C

scoreboard players operation dp0 swMath_V /= C_100 swMath_C
scoreboard players operation dp1 swMath_V /= C_100 swMath_C
scoreboard players operation dp2 swMath_V /= C_100 swMath_C

#tellraw @a [{"text":"dp0 "},{"score":{"objective":"swMath_V","name": "dp0"}},{"text":" dp1 "},{"score":{"objective":"swMath_V","name": "dp1"}},{"text":" dp2 "},{"score":{"objective":"swMath_V","name": "dp2"}}]

scoreboard players operation pose0 swSocc_pose += dp0 swMath_V
scoreboard players operation pose1 swSocc_pose += dp1 swMath_V
scoreboard players operation pose2 swSocc_pose += dp2 swMath_V

scoreboard players operation DT swMath_V -= dt swMath_V

# iterate again if DT is not zero
#execute if score DT swMath_V matches 1.. run function soccer:classes/pose/w2dpdt_loop

############# iteration ends

# set pose
data merge entity @e[type=armor_stand,tag=swSocc_ball_pivot,limit=1,sort=nearest] {Pose:{Head:[0.0001f,0.0f,0.0f]}}
execute if score pose0 swSocc_pose matches 0 if score pose1 swSocc_pose matches 0 if score pose2 swSocc_pose matches 0 run scoreboard players add pose0 swSocc_pose 2
execute store result entity @e[type=armor_stand,tag=swSocc_ball_pivot,limit=1,sort=nearest] Pose.Head[0] float 0.0001 run scoreboard players get pose0 swSocc_pose
execute store result entity @e[type=armor_stand,tag=swSocc_ball_pivot,limit=1,sort=nearest] Pose.Head[1] float 0.0001 run scoreboard players get pose1 swSocc_pose
execute store result entity @e[type=armor_stand,tag=swSocc_ball_pivot,limit=1,sort=nearest] Pose.Head[2] float 0.0001 run scoreboard players get pose2 swSocc_pose

