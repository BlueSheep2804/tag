clear @a

# デバイスのリセット
function tag:device/reset

# ランダムテレポートのクールダウンのリセット
scoreboard players reset @a TAG.cd_tagger_tp_runner

# 開始位置にテレポート
tp @a[team=blue] @e[type=marker,tag=TAG.spawn_blue,limit=1]
tp @a[team=red] @e[type=marker,tag=TAG.spawn_red,limit=1]

# ダメージ、空腹無効化
effect give @a resistance infinite 255 true
effect give @a saturation infinite 255 true
# 束縛
effect give @a slowness infinite 255 true
effect give @a jump_boost infinite 200 true
effect give @a[team=red] blindness infinite 255 true

# 鬼用装備付与
execute as @a[team=red] run function tag:give_tagger_armor

schedule function teamsupport:countdown/3 1s
schedule function teamsupport:countdown/2 2s
schedule function teamsupport:countdown/1 3s
schedule function tag:start_runner 4s
schedule function tag:start_tagger 34s
