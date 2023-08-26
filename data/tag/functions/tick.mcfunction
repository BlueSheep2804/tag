execute as @a[predicate=tag:hold_freeze_unit] at @s anchored eyes positioned ^ ^ ^0.5 run function tag:freeze_unit/rec

execute as @a[tag=TAG.hit,predicate=!tag:hold_freeze_unit] at @s run function tag:freeze_unit/hit
