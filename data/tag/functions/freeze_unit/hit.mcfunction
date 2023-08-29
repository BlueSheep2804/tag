summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:24,ShowIcon:false,ShowParticles:false,Duration:2}]}
playsound entity.experience_orb.pickup player @s[tag=!TAG.freeze] ~ ~ ~ 0.2 1.6

scoreboard players operation @s TAG.freeze_percentage += #gun_hit TAG.freeze_percentage

execute if score @s TAG.freeze_percentage >= #max TAG.freeze_percentage as @s[tag=!TAG.freeze] run function tag:tag_freeze

tag @s remove TAG.hit
