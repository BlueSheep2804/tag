scoreboard objectives add TAG.freeze_display dummy
execute unless score $global TAG.freeze_display matches -2147483648..2147483647 run scoreboard players set $global TAG.freeze_display 1

scoreboard objectives add TAG.freeze_unit_rate dummy
scoreboard players set #2 TAG.freeze_unit_rate 2

scoreboard objectives add TAG.freeze_percentage dummy
scoreboard players set #max TAG.freeze_percentage 1000
scoreboard players set #gun_hit TAG.freeze_percentage 10
scoreboard players set #melee_hit TAG.freeze_percentage 300
scoreboard players set #melting TAG.freeze_percentage 8
scoreboard players set #tmp TAG.freeze_percentage 0

scoreboard objectives add TAG.click used:carrot_on_a_stick

scoreboard objectives add TAG.freeze_unit_mode dummy
scoreboard players set #2 TAG.freeze_unit_mode 2

scoreboard objectives add TAG.xpbar dummy
scoreboard players set #1000 TAG.xpbar 1000
scoreboard players set #4 TAG.xpbar 4
scoreboard players set #10 TAG.xpbar 10

scoreboard objectives add TAG.temp dummy

scoreboard objectives add TAG.device dummy
execute unless score $max TAG.freeze_display matches -2147483648..2147483647 run scoreboard players set $max TAG.device 2
