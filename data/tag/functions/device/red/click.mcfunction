tellraw @s [{"text": "赤", "color": "red"}, {"text": "のボタンを押しました！"}]
playsound entity.firework_rocket.launch block @s ~ ~ ~ 0.8 1

data modify entity @e[type=interaction,tag=TAG.device_red,limit=1] width set value 0
tag @e[type=interaction,tag=TAG.device_red] add TAG.device_clicked

execute store result score #clicked TAG.device if entity @e[tag=TAG.device_clicked]
execute if score #clicked TAG.device >= $max TAG.device run function tag:device/clicked_all_devices

advancement revoke @s only tag:device/red
