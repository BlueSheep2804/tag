scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display -= @s TAG.freeze_display

effect clear @s slowness
effect clear @s jump_boost
item replace entity @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] container.0 with air 1
item replace entity @s armor.legs with air

scoreboard players set @s TAG.freeze_percentage 0
tag @s remove TAG.freeze

tellraw @a {"text":"☀ ","color":"light_purple","extra":[{"selector":"@s","bold":true},{"text":"の氷が解けた！","bold":true}]}

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display += @s TAG.freeze_display
