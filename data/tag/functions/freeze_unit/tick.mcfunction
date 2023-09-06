# 右クリック検知
execute as @s[scores={TAG.click=1..}] run function tag:freeze_unit/mode_change

# 凍結ユニットの当たり判定チェック
execute as @s[scores={TAG.freeze_unit_mode=1}] at @s anchored eyes positioned ^ ^ ^0.5 run function tag:freeze_unit/rec

# 凍結ユニットの攻撃処理
execute as @a[tag=TAG.hit,predicate=!tag:hold_freeze_unit] at @s run function tag:freeze_unit/hit
