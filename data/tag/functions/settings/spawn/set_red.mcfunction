execute unless entity @e[type=marker,tag=TAG.spawn_red] summon marker run tag @s add TAG.spawn_red 

execute as @e[type=marker,tag=TAG.spawn_red] align xyz positioned ~0.5 ~0.2 ~0.5 run tp @s ~ ~ ~

tp @s ~ -128 ~
kill @s
