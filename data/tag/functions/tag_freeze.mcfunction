# 凍結状態のタグを追加
tag @s add TAG.freeze

# 演出
tellraw @a {"text":"❄ ","color":"aqua","extra":[{"selector":"@s","bold":true},{"text":"が凍らされた！","bold":true}]}

# 凍結中の装備を付与
item replace entity @s armor.head with diamond_helmet
item modify entity @s armor.head tag:freezeing
item replace entity @s armor.feet with diamond_boots
item modify entity @s armor.feet tag:freezeing

# アイテムディスプレイの位置変更
scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display -= @s TAG.freeze_display

tp @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] ~ ~ ~ 0 0

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display += @s TAG.freeze_display
