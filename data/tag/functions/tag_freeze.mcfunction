tag @s add TAG.freeze

tellraw @a {"text":"❄ ","color":"aqua","extra":[{"selector":"@s","bold":true},{"text":"が凍らされた！","bold":true}]}

item replace entity @s armor.head with diamond_helmet
item modify entity @s armor.head tag:freezeing
item replace entity @s armor.feet with diamond_boots
item modify entity @s armor.feet tag:freezeing

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display -= @s TAG.freeze_display

tp @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] ~ ~ ~ 0 0

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display += @s TAG.freeze_display
