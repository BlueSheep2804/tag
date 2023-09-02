# 殴られた際の処理

# 凍結度を設定値分増やす
scoreboard players operation @s TAG.freeze_percentage += #melee_hit TAG.freeze_percentage

# 設定値より上なら凍らせる
execute if score @s TAG.freeze_percentage >= #max TAG.freeze_percentage as @s[tag=!TAG.freeze] at @s run function tag:tag_freeze

# リセット
advancement revoke @s only tag:freezer_hurt_player
