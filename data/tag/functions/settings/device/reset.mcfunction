# 当たり判定をリセット
data modify entity @e[type=interaction,tag=TAG.device_blue,limit=1] width set value 1.001
data modify entity @e[type=interaction,tag=TAG.device_red,limit=1] width set value 1.001

# デバイスのクリックのリセット
tag @e[tag=TAG.device_clicked] remove TAG.device_clicked
scoreboard players set #clicked_all_devices TAG.device 0
