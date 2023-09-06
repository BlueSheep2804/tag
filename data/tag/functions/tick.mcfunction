# 凍結ユニットの処理
execute as @a[predicate=tag:hold_freeze_unit] at @s run function tag:freeze_unit/tick

# 凍結処理
execute as @a[tag=TAG.freeze] at @s run function tag:freeze

# ゴール
execute if score #clicked_all_devices TAG.device matches 1 run function tag:goal/tick

# 経験値操作
execute as @a at @s run function tag:freezing_level/sync_xpbar
stopsound @a * entity.player.levelup

# アクションバー操作
execute if predicate teamsupport:timer/is_enabled as @a at @s run function tag:status

# 終了判定
execute if score #tick TS_timer matches ..-1 run function tag:end

# テレポーター
execute as @a[team=red] at @s run function tag:items/teleporter/tick

# 設定アイテム検知
execute as @e[type=allay,tag=TAG.spawn_set_blue] at @s run function tag:spawn_set/set_blue
execute as @e[type=salmon,tag=TAG.spawn_set_red] at @s run function tag:spawn_set/set_red
execute as @e[type=glow_squid,tag=TAG.goal_set] at @s run function tag:goal/set
execute as @e[type=item_frame,tag=TAG.device_blue] at @s run function tag:device/blue/set
execute as @e[type=item_frame,tag=TAG.device_red] at @s run function tag:device/red/set

# リセット
execute as @a[scores={TAG.click=1..}] at @s run scoreboard players set @s TAG.click 0
