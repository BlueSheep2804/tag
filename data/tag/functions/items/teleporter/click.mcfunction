# 逃走者をランダムで一人選出
tag @a[team=blue,tag=!TAG.freeze,sort=random,limit=1] add TAG.random_pick
tp @s @a[tag=TAG.random_pick,limit=1]

# 選ばれた逃走者に警告
title @a[tag=TAG.random_pick] title {"text": "⚠", "color": "yellow"}
tellraw @a[tag=TAG.random_pick] {"text": "誰かがワープしてきた気がする…"}

# デバフ
effect give @s blindness 4 1 true
effect give @s slowness 3 3 true

# クールダウンの設定
scoreboard players set @s TAG.cd_tagger_tp_runner 3600
clear @s carrot_on_a_stick{TAG.item:"tagger_tp_runner"}

# リセット
tag @a[tag=TAG.random_pick] remove TAG.random_pick
scoreboard players set @s TAG.click 0
