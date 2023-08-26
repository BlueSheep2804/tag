execute summon item_display run scoreboard players operation @s TAG.freeze_display = $global TAG.freeze_display
scoreboard players operation @s TAG.freeze_display = $global TAG.freeze_display
execute as @e[type=item_display] if score @s TAG.freeze_display = $global TAG.freeze_display run function tag:init_freeze_display
scoreboard players add $global TAG.freeze_display 1
