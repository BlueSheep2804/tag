execute unless entity @e[type=marker,tag=TAG.goal] summon marker run tag @s add TAG.goal 

execute as @e[type=marker,tag=TAG.goal] align xyz positioned ~0.5 ~0.2 ~0.5 run tp @s ~ ~ ~

tp @s ~ -128 ~
kill @s
