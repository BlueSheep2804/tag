execute at @s[tag=TAG.device_red] as @e[type=interaction,tag=TAG.device_red] run function tag:settings/device/move

execute unless entity @e[type=interaction,tag=TAG.device_red] as @s[tag=TAG.device_red] at @s run function tag:settings/device/red/summon

kill @s
