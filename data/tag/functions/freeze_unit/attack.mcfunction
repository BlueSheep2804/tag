scoreboard players operation @s TAG.freeze_percentage += #melee_hit TAG.freeze_percentage

execute if score @s TAG.freeze_percentage >= #max TAG.freeze_percentage run tag @s add TAG.freeze

advancement revoke @s only tag:freezer_hurt_player
