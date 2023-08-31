execute as @a[scores={TAG.click=1..},predicate=tag:hold_freeze_unit] at @s run function tag:freeze_unit/mode_change
execute as @a[scores={TAG.click=1..},predicate=!tag:hold_freeze_unit] at @s run scoreboard players set @s TAG.click 0

execute as @a[predicate=tag:hold_freeze_unit,scores={TAG.freeze_unit_mode=1}] at @s anchored eyes positioned ^ ^ ^0.5 run function tag:freeze_unit/rec

execute as @a[tag=TAG.hit,predicate=!tag:hold_freeze_unit] at @s run function tag:freeze_unit/hit

execute as @a[tag=TAG.freeze] at @s run function tag:freeze

execute as @a at @s run function tag:freezing_level/sync_xpbar
stopsound @a * entity.player.levelup

execute if predicate teamsupport:timer/is_enabled run function tag:status

execute if score #tick TS_timer matches ..-1 run function tag:end

execute as @e[type=allay,tag=TAG.spawn_set_blue] at @s run function tag:spawn_set/set_blue
execute as @e[type=salmon,tag=TAG.spawn_set_red] at @s run function tag:spawn_set/set_red
execute as @e[type=item_frame,tag=TAG.device_blue] at @s run function tag:device/blue/set
execute as @e[type=item_frame,tag=TAG.device_red] at @s run function tag:device/red/set
