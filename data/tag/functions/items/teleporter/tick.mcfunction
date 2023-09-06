# 右クリック検知
execute as @s[scores={TAG.click=1..},predicate=tag:hold_tagger_tp_runner] run function tag:items/teleporter/click

# クールダウン
scoreboard players remove @s[scores={TAG.cd_tagger_tp_runner=1..}] TAG.cd_tagger_tp_runner 1
execute as @s[scores={TAG.cd_tagger_tp_runner=..0}] run function tag:items/teleporter/cd_end
