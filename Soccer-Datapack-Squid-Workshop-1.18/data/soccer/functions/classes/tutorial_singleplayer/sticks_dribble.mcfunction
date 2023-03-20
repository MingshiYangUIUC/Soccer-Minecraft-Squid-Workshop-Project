
# dribble
tellraw @s [{"text":"----"},{"text":"The last stick, DRIBBLE, lets you move the balls around without kicking it away."}]
tellraw @s [{"text":"    "},{"text":"When you approach the ball holding the DRIBBLE stick, the ball will be gently pushed forward."}]

tellraw @s [{"text":"    "},{"text":"This stick is useful when you want to control the ball, intercept a moving ball, or win the ball over other players."}]
tellraw @s [{"text":"    "},{"text":"You have higher chance to possess the ball when you are closer to it."}]

tellraw @s [{"text":"    "},{"text":"FWD displayed on screen means you are dribbling the ball forward. But you can change the dribble direction by HOLDING right click."}]
tellraw @s [{"text":"    "},{"text":"BCK will appear on screen, meaning you are dribbling the ball backward. Surprise your opponent with this!"}]
tellraw @s [{"text":"    "},{"text":"The direction automatically resets to FWD when you release right click."}]

tellraw @s [{"text":"    "},{"text":"Try to move the balls around while holding this stick."}]

# leave tutorial
tellraw @s [{"text":"    "},{"underlined":true,"text":"<Leave Tutorial>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/clear"}}]

# proceed to practice
tellraw @s [{"text":"    "},{"underlined":true,"text":"<Practice Challenges>","color":"white","clickEvent":{"action":"run_command","value":"/function soccer:classes/tutorial_singleplayer/practice_0"}}]

