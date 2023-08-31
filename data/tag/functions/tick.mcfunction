execute as @a[scores={TAG.click=1..},predicate=tag:hold_freeze_unit] at @s run function tag:freeze_unit/mode_change
execute as @a[scores={TAG.click=1..},predicate=tag:hold_tagger_tp_runner] at @s run function tag:items/tagger_tp_runner/click
execute as @a[scores={TAG.click=1..}] at @s run scoreboard players set @s TAG.click 0

execute as @a[predicate=tag:hold_freeze_unit,scores={TAG.freeze_unit_mode=1}] at @s anchored eyes positioned ^ ^ ^0.5 run function tag:freeze_unit/rec

execute as @a[tag=TAG.hit,predicate=!tag:hold_freeze_unit] at @s run function tag:freeze_unit/hit

execute as @a[tag=TAG.freeze] at @s run function tag:freeze

execute if score #clicked_all_devices TAG.device matches 1 run function tag:goal/tick

execute as @a at @s run function tag:freezing_level/sync_xpbar
stopsound @a * entity.player.levelup

scoreboard players remove @a[scores={TAG.cd_tagger_tp_runner=1..}] TAG.cd_tagger_tp_runner 1
execute as @a[scores={TAG.cd_tagger_tp_runner=..0}] at @s run function tag:items/tagger_tp_runner/cd_end

execute if predicate teamsupport:timer/is_enabled as @a at @s run function tag:status

execute if score #tick TS_timer matches ..-1 run function tag:end

execute as @e[type=allay,tag=TAG.spawn_set_blue] at @s run function tag:spawn_set/set_blue
execute as @e[type=salmon,tag=TAG.spawn_set_red] at @s run function tag:spawn_set/set_red
execute as @e[type=glow_squid,tag=TAG.goal_set] at @s run function tag:goal/set
execute as @e[type=item_frame,tag=TAG.device_blue] at @s run function tag:device/blue/set
execute as @e[type=item_frame,tag=TAG.device_red] at @s run function tag:device/red/set
