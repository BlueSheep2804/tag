execute summon interaction run tag @s add TAG.device_red
data modify entity @e[type=interaction,tag=TAG.device_red,limit=1] CustomName set value '{"text":"仕掛け(赤)", "color": "red"}'
data modify entity @e[type=interaction,tag=TAG.device_red,limit=1] height set value 1.001
data modify entity @e[type=interaction,tag=TAG.device_red,limit=1] width set value 1.001

execute as @e[type=interaction,tag=TAG.device_red] run tellraw @a[gamemode=creative,sort=nearest,limit=1] [{"selector": "@s"}, {"text": "を召還しました", "color": "white"}]
