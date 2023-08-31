tag @a[team=blue,sort=random,limit=1] add TAG.random_pick
tp @s @a[tag=TAG.random_pick,limit=1]
title @a[tag=TAG.random_pick] title {"text": "⚠", "color": "yellow"}
tellraw @a[tag=TAG.random_pick] {"text": "誰かがワープしてきた気がする…"}

effect give @s blindness 4 1 true
effect give @s slowness 3 3 true

scoreboard players set @s TAG.cd_tagger_tp_runner 3600
clear @s carrot_on_a_stick{TAG.item:"tagger_tp_runner"}

tag @a[tag=TAG.random_pick] remove TAG.random_pick
scoreboard players set @s TAG.click 0
