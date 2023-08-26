scoreboard objectives add TAG.freeze_display dummy
execute unless score $global TAG.freeze_display matches -2147483648..2147483647 run scoreboard players set $global TAG.freeze_display 1
