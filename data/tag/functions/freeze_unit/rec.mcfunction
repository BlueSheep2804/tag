scoreboard players add @s TAG.freeze_unit_rate 1
scoreboard players operation @s TAG.freeze_unit_rate %= #2 TAG.freeze_unit_rate

# 当たり判定内にプレイヤーがいるかどうか
execute positioned ~-0.2 ~-0.2 ~-0.2 as @a[dx=0,predicate=!tag:hold_freeze_unit] positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] run tag @s add TAG.hit

# パーティクルの表示
execute if score @s TAG.freeze_unit_rate matches 0 run particle snowflake ~ ~-0.2 ~ 0 -0.4 0 0.4 0 force

# デバッグ用
# particle dust 0.388 0.878 0.235 0.4 ~-0.2 ~-0.2 ~-0.2 0 0 0 0 1 force
# particle dust 0.235 0.494 0.878 0.4 ~0.2 ~0.2 ~0.2 0 0 0 0 1 force

# 前に進めて再検知
execute positioned ^ ^ ^0.25 if entity @s[distance=..6] if block ~ ~ ~ #tag:airs run function tag:freeze_unit/rec
