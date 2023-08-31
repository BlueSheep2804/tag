scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display -= @s TAG.freeze_display

ride @s mount @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0},limit=1]
item replace entity @e[type=item_display,tag=TAG.freeze_display,scores={TAG.freeze_display=0}] container.0 with ice 1

execute if score @s TAG.freeze_percentage >= #max TAG.freeze_percentage run scoreboard players operation @s TAG.freeze_percentage = #max TAG.freeze_percentage

tag @s add TAG.tmp
execute store result score #tmp TAG.freeze_percentage positioned ~-2 ~ ~-2 if entity @a[tag=!TAG.tmp,tag=!TAG.freeze,predicate=tag:is_sneaking,dx=3,dy=1,dz=3]
tag @s remove TAG.tmp
scoreboard players operation #tmp TAG.freeze_percentage *= #melting TAG.freeze_percentage
scoreboard players operation @s TAG.freeze_percentage -= #tmp TAG.freeze_percentage
scoreboard players set #tmp TAG.freeze_percentage 0

scoreboard players operation @e[type=item_display,tag=TAG.freeze_display] TAG.freeze_display += @s TAG.freeze_display

execute if score @s TAG.freeze_percentage matches ..0 run function tag:unfreeze
