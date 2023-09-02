# 凍結ユニットのモード切替

# トグル
scoreboard players add @s TAG.freeze_unit_mode 1
scoreboard players operation @s TAG.freeze_unit_mode %= #2 TAG.freeze_unit_mode

execute if score @s TAG.freeze_unit_mode matches 0 run function tag:freeze_unit/mode_change/melee
execute if score @s TAG.freeze_unit_mode matches 1 run function tag:freeze_unit/mode_change/gun

# 演出
playsound block.iron_trapdoor.open player @s ~ ~ ~ 0.8 2

# リセット
scoreboard players set @s TAG.click 0
