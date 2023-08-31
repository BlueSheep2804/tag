tag @s add TAG.freeze

tellraw @a {"text":"❄ ","color":"aqua","extra":[{"selector":"@s","bold":true},{"text":"が凍らされた！","bold":true}]}

item replace entity @s armor.legs with diamond_leggings
item modify entity @s armor.legs tag:freezeing

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display -= @s TAG.freeze_display

tp @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] ~ ~ ~ 0 0

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display += @s TAG.freeze_display
