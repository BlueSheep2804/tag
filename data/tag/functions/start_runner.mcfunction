# 逃走者の開始処理

# 束縛を解除
effect clear @a[team=blue] slowness
effect clear @a[team=blue] jump_boost

# 演出
title @a subtitle {"text": "鬼は30秒後に解放"}
title @a title {"text": "スタート!","bold": true}
execute as @a at @s run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.0

# スタンクロスボウを付与
execute as @a[team=blue] run function tag:items/stun_crossbow/give

# 鬼開始までのタイマーを設定
scoreboard players operation #after TS_timer = #max TS_timer
scoreboard players set #max TS_timer 600
bossbar set teamsupport:timer visible true

function teamsupport:timer/start
