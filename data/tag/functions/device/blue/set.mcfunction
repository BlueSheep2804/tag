execute at @s[tag=TAG.device_blue] as @e[type=interaction,tag=TAG.device_blue] run function tag:device/move

execute unless entity @e[type=interaction,tag=TAG.device_blue] as @s[tag=TAG.device_blue] at @s run function tag:device/blue/summon

kill @s
