# アイテムディスプレイの初期化処理
tag @s add TAG.freeze_display
item replace entity @s container.0 with air 1
data modify entity @s brightness set value {sky:15,block:15}
