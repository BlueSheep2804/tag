scoreboard players add @s TAG.freeze_percentage 20

execute if score @s TAG.freeze_percentage >= #max TAG.freeze_percentage run function tag:freeze

advancement revoke @s only tag:freezer_hurt_player
