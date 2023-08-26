# 参考動画: 経験値バーを自由に操作しよう！【マイクラコマンド解説】
# https://youtu.be/Dtn_FQcDF8E

# レベル 129 はポイントが 0~1002
xp set @s 129 levels
execute store result score #points TAG.xpbar run xp query @s points

# 凍結度を経験値の値に変換
scoreboard players operation #diff TAG.xpbar = @s TAG.freeze_percentage
scoreboard players operation #diff TAG.xpbar *= #1000 TAG.xpbar
scoreboard players operation #diff TAG.xpbar /= #max TAG.freeze_percentage
scoreboard players operation #diff TAG.xpbar -= #points TAG.xpbar
scoreboard players operation #diff TAG.xpbar /= #4 TAG.xpbar
scoreboard players operation #points TAG.xpbar += #diff TAG.xpbar

# スコアを経験値に代入
xp set @s 0 points
execute if score #points TAG.xpbar matches 512.. run xp add @s 512 points
execute if score #points TAG.xpbar matches 512.. run scoreboard players remove #points TAG.xpbar 512
execute if score #points TAG.xpbar matches 256.. run xp add @s 256 points
execute if score #points TAG.xpbar matches 256.. run scoreboard players remove #points TAG.xpbar 256
execute if score #points TAG.xpbar matches 128.. run xp add @s 128 points
execute if score #points TAG.xpbar matches 128.. run scoreboard players remove #points TAG.xpbar 128
execute if score #points TAG.xpbar matches 64.. run xp add @s 64 points
execute if score #points TAG.xpbar matches 64.. run scoreboard players remove #points TAG.xpbar 64
execute if score #points TAG.xpbar matches 32.. run xp add @s 32 points
execute if score #points TAG.xpbar matches 32.. run scoreboard players remove #points TAG.xpbar 32
execute if score #points TAG.xpbar matches 16.. run xp add @s 16 points
execute if score #points TAG.xpbar matches 16.. run scoreboard players remove #points TAG.xpbar 16
execute if score #points TAG.xpbar matches 8.. run xp add @s 8 points
execute if score #points TAG.xpbar matches 8.. run scoreboard players remove #points TAG.xpbar 8
execute if score #points TAG.xpbar matches 4.. run xp add @s 4 points
execute if score #points TAG.xpbar matches 4.. run scoreboard players remove #points TAG.xpbar 4
execute if score #points TAG.xpbar matches 2.. run xp add @s 2 points
execute if score #points TAG.xpbar matches 2.. run scoreboard players remove #points TAG.xpbar 2
execute if score #points TAG.xpbar matches 1.. run xp add @s 1 points
execute if score #points TAG.xpbar matches 1.. run scoreboard players remove #points TAG.xpbar 1

# スコアをレベルに代入
xp set @s 0 levels
scoreboard players operation #levels TAG.xpbar = @s TAG.freeze_percentage

execute if score #levels TAG.xpbar matches 512.. run xp add @s 512 levels
execute if score #levels TAG.xpbar matches 512.. run scoreboard players remove #levels TAG.xpbar 512
execute if score #levels TAG.xpbar matches 256.. run xp add @s 256 levels
execute if score #levels TAG.xpbar matches 256.. run scoreboard players remove #levels TAG.xpbar 256
execute if score #levels TAG.xpbar matches 128.. run xp add @s 128 levels
execute if score #levels TAG.xpbar matches 128.. run scoreboard players remove #levels TAG.xpbar 128
execute if score #levels TAG.xpbar matches 64.. run xp add @s 64 levels
execute if score #levels TAG.xpbar matches 64.. run scoreboard players remove #levels TAG.xpbar 64
execute if score #levels TAG.xpbar matches 32.. run xp add @s 32 levels
execute if score #levels TAG.xpbar matches 32.. run scoreboard players remove #levels TAG.xpbar 32
execute if score #levels TAG.xpbar matches 16.. run xp add @s 16 levels
execute if score #levels TAG.xpbar matches 16.. run scoreboard players remove #levels TAG.xpbar 16
execute if score #levels TAG.xpbar matches 8.. run xp add @s 8 levels
execute if score #levels TAG.xpbar matches 8.. run scoreboard players remove #levels TAG.xpbar 8
execute if score #levels TAG.xpbar matches 4.. run xp add @s 4 levels
execute if score #levels TAG.xpbar matches 4.. run scoreboard players remove #levels TAG.xpbar 4
execute if score #levels TAG.xpbar matches 2.. run xp add @s 2 levels
execute if score #levels TAG.xpbar matches 2.. run scoreboard players remove #levels TAG.xpbar 2
execute if score #levels TAG.xpbar matches 1.. run xp add @s 1 levels
execute if score #levels TAG.xpbar matches 1.. run scoreboard players remove #levels TAG.xpbar 1

# リセット
scoreboard players reset #levels TAG.xpbar
scoreboard players reset #diff TAG.xpbar
scoreboard players reset #levels TAG.xpbar
