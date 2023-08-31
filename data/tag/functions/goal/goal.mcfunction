title @s title {"text": "逃げ切った！"}
tellraw @a [{"selector": "@s"}, {"text": "が逃走成功！", "color": "light_purple"}]

tag @s add TAG.goal

gamemode spectator @s
