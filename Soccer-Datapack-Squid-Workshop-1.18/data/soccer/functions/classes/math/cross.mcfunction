#Input: Aijk's V; Bijk's V
#Output: Oijk's V


#Oi
scoreboard players operation ajbk swSocc_V = Aj swSocc_V
scoreboard players operation ajbk swSocc_V *= Bk swSocc_V

scoreboard players operation akbj swSocc_V = Ak swSocc_V
scoreboard players operation akbj swSocc_V *= Bj swSocc_V

scoreboard players operation Oi swSocc_V = ajbk swSocc_V
scoreboard players operation Oi swSocc_V -= akbj swSocc_V

#Oj
scoreboard players operation akbi swSocc_V = Ak swSocc_V
scoreboard players operation akbi swSocc_V *= Bi swSocc_V

scoreboard players operation aibk swSocc_V = Ai swSocc_V
scoreboard players operation aibk swSocc_V *= Bk swSocc_V

scoreboard players operation Oj swSocc_V = akbi swSocc_V
scoreboard players operation Oj swSocc_V -= aibk swSocc_V

#Ok
scoreboard players operation aibj swSocc_V = Ai swSocc_V
scoreboard players operation aibj swSocc_V *= Bj swSocc_V

scoreboard players operation ajbi swSocc_V = Aj swSocc_V
scoreboard players operation ajbi swSocc_V *= Bi swSocc_V

scoreboard players operation Ok swSocc_V = aibj swSocc_V
scoreboard players operation Ok swSocc_V -= ajbi swSocc_V
