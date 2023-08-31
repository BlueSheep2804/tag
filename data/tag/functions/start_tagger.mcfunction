effect clear @a[team=red] slowness
effect clear @a[team=red] jump_boost
effect clear @a[team=red] blindness

execute as @a[team=red] at @s run function tag:freeze_unit/give
execute as @a[team=red] at @s run function tag:items/tagger_tp_runner/give

title @a reset
title @a title {"text": "❄ 鬼解放 ❄", "color": "aqua"}
execute as @a at @s run playsound entity.ender_dragon.growl player @s ~ ~ ~ 0.5 1.2

scoreboard players operation #max TS_timer = #after TS_timer

function teamsupport:timer/start
