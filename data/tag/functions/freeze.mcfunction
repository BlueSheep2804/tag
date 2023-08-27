scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display -= @s TAG.freeze_display

effect give @s slowness infinite 255 true
effect give @s jump_boost infinite 200 true
tp @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] ~ ~0.5 ~ 0 0
item replace entity @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] container.0 with ice 1

execute if score @s TAG.freeze_percentage matches 101.. run scoreboard players set @s TAG.freeze_percentage 100

tag @s add TAG.tmp
execute store result score #tmp TAG.freeze_percentage positioned ~-2 ~ ~-2 if entity @a[tag=!TAG.tmp,predicate=tag:is_sneaking,dx=3,dy=1,dz=3]
tag @s remove TAG.tmp
scoreboard players operation @s TAG.freeze_percentage -= #tmp TAG.freeze_percentage
scoreboard players set #tmp TAG.freeze_percentage 0

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display += @s TAG.freeze_display

execute if score @s TAG.freeze_percentage matches ..0 run function tag:unfreeze
