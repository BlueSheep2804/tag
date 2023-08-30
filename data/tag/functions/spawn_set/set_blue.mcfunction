execute unless entity @e[type=marker,tag=TAG.spawn_blue] summon marker run tag @s add TAG.spawn_blue 

execute as @e[type=marker,tag=TAG.spawn_blue] align xyz positioned ~0.5 ~0.2 ~0.5 run tp @s ~ ~ ~

tp @s ~ -128 ~
kill @s
