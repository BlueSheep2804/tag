# アイテムディスプレイとプレイヤーを紐づけ
scoreboard objectives add TAG.freeze_display dummy
execute unless score $global TAG.freeze_display matches -2147483648..2147483647 run scoreboard players set $global TAG.freeze_display 1

# フリーズユニットのエフェクトの量調整
scoreboard objectives add TAG.freeze_unit_rate dummy
scoreboard players set #2 TAG.freeze_unit_rate 2

# 凍結度とそれの増加量
scoreboard objectives add TAG.freeze_percentage dummy
scoreboard players set #max TAG.freeze_percentage 1000
scoreboard players set #gun_hit TAG.freeze_percentage 10
scoreboard players set #melee_hit TAG.freeze_percentage 300
scoreboard players set #melting TAG.freeze_percentage 8
scoreboard players set #tmp TAG.freeze_percentage 0

# クリック検知
scoreboard objectives add TAG.click used:carrot_on_a_stick

# 凍結ユニットのモード管理
scoreboard objectives add TAG.freeze_unit_mode dummy
scoreboard players set #2 TAG.freeze_unit_mode 2

# 経験値の同期
scoreboard objectives add TAG.xpbar dummy
scoreboard players set #104 TAG.xpbar 104
scoreboard players set #4 TAG.xpbar 4
scoreboard players set #10 TAG.xpbar 10

# 一時的な値の保存
scoreboard objectives add TAG.temp dummy

# デバイスのクリック状況の保存
scoreboard objectives add TAG.device dummy
execute unless score $max TAG.freeze_display matches -2147483648..2147483647 run scoreboard players set $max TAG.device 2

# ランダムテレポートのクールダウン管理
scoreboard objectives add TAG.cd_tagger_tp_runner dummy
