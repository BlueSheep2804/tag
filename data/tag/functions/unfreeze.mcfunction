scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display -= @s TAG.freeze_display

# 束縛解除
ride @s dismount

# 見た目をリセット
item replace entity @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] container.0 with air 1
item replace entity @s armor.head with air
item replace entity @s armor.feet with air

# 凍結状態を解除
scoreboard players set @s TAG.freeze_percentage 0
tag @s remove TAG.freeze

# 演出
tellraw @a {"text":"☀ ","color":"light_purple","extra":[{"selector":"@s","bold":true},{"text":"の氷が解けた！","bold":true}]}
playsound entity.zombie_villager.cure player @s ~ ~ ~ 0.5 1

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display += @s TAG.freeze_display
