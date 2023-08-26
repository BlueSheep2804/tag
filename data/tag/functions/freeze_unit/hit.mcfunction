summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:24,ShowIcon:false,ShowParticles:false,Duration:2}]}

scoreboard players add @s TAG.freeze_percentage 1

execute if score @s TAG.freeze_percentage >= #100 TAG.freeze_percentage run function tag:freeze

tag @s remove TAG.hit
