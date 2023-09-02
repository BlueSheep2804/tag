# 演出
summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:24,ShowIcon:false,ShowParticles:false,Duration:2}]}
playsound entity.experience_orb.pickup player @s[tag=!TAG.freeze] ~ ~ ~ 0.2 1.6

# 凍結度を設定値分増やす
scoreboard players operation @s TAG.freeze_percentage += #gun_hit TAG.freeze_percentage

# 設定値より上なら凍らせる
execute if score @s TAG.freeze_percentage >= #max TAG.freeze_percentage as @s[tag=!TAG.freeze] at @s run function tag:tag_freeze

# リセット
tag @s remove TAG.hit
