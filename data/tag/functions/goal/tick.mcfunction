# ゴール地点にいるかどうか
execute at @e[type=marker,tag=TAG.goal] positioned ~-2 ~ ~-2 as @a[team=blue,gamemode=!spectator,dx=3,dy=1,dz=3] run function tag:goal/goal

# 演出
execute at @e[type=marker,tag=TAG.goal] run particle happy_villager ~ ~ ~ 1 1 1 2 1 force
