scoreboard objectives add TAG.freeze_display dummy
execute unless score $global TAG.freeze_display matches -2147483648..2147483647 run scoreboard players set $global TAG.freeze_display 1

scoreboard objectives add TAG.freeze_unit_rate dummy
scoreboard players set #2 TAG.freeze_unit_rate 2

scoreboard objectives add TAG.freeze_percentage dummy
scoreboard players set #max TAG.freeze_percentage 100

scoreboard objectives add TAG.click used:carrot_on_a_stick

scoreboard objectives add TAG.freeze_unit_mode dummy
scoreboard players set #2 TAG.freeze_unit_mode 2

scoreboard objectives add TAG.xpbar dummy
scoreboard players set #1000 TAG.xpbar 1000
scoreboard players set #4 TAG.xpbar 4
