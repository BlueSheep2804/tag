# 鬼の開始処理

# 束縛解除
effect clear @a[team=red] slowness
effect clear @a[team=red] jump_boost
effect clear @a[team=red] blindness

# アイテム付与
execute as @a[team=red] at @s run function tag:freeze_unit/give
execute as @a[team=red] at @s run function tag:items/teleporter/give

# 演出
title @a reset
title @a title {"text": "❄ 鬼解放 ❄", "color": "aqua"}
execute as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 0.5 1.2

# タイマー開始
scoreboard players operation #max TS_timer = #after TS_timer

function teamsupport:timer/start
