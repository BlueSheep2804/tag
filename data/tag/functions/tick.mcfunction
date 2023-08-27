execute as @a[scores={TAG.click=1..},predicate=tag:hold_freeze_unit] at @s run function tag:freeze_unit/mode_change
execute as @a[scores={TAG.click=1..},predicate=!tag:hold_freeze_unit] at @s run scoreboard players set @s TAG.click 0

execute as @a[predicate=tag:hold_freeze_unit,scores={TAG.freeze_unit_mode=1}] at @s anchored eyes positioned ^ ^ ^0.5 run function tag:freeze_unit/rec

execute as @a[tag=TAG.hit,predicate=!tag:hold_freeze_unit] at @s run function tag:freeze_unit/hit

execute as @a[tag=TAG.freeze] at @s run function tag:freeze

execute as @a at @s run function tag:freezing_level/sync_xpbar
stopsound @a * entity.player.levelup
