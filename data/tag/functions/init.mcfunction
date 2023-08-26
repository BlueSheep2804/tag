scoreboard objectives add TAG.freeze_display dummy
execute unless score $global TAG.freeze_display matches -2147483648..2147483647 run scoreboard players set $global TAG.freeze_display 1

scoreboard objectives add TAG.freeze_unit_rate dummy
scoreboard players set #5 TAG.freeze_unit_rate 5
scoreboard players set #4 TAG.freeze_unit_rate 4
scoreboard players set #3 TAG.freeze_unit_rate 3
scoreboard players set #2 TAG.freeze_unit_rate 2
