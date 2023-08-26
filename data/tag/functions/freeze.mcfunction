scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display -= @s TAG.freeze_display

effect give @s slowness infinite 255 true
effect give @s jump_boost infinite 200 true
tp @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] ~ ~0.5 ~ 0 0
item replace entity @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] container.0 with ice 1

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display += @s TAG.freeze_display
