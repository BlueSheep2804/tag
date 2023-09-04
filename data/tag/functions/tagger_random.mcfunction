# チーム選択ができるかどうかで分岐
execute if score $can_select_team TS_settings matches 0 run tag @a[scores={TS_team_entry=1},team=!red,sort=random,limit=1] add TAG.tmp
execute if score $can_select_team TS_settings matches 1 run tag @a[scores={TS_team_entry=2},team=!red,sort=random,limit=1] add TAG.tmp

# チームに加入
execute store success score #success TAG.temp run team join red @a[tag=TAG.tmp]

# 演出
execute if score #success TAG.temp matches 0 run tellraw @a {"text": "誰も鬼に加わろうとしませんでした...", "color": "red", "bold": true}
execute if score #success TAG.temp matches 1 run tellraw @a {"selector": "@a[tag=TAG.tmp]", "bold": true, "extra": [{"text": "が鬼に加わりました!", "color": "white"}]}

tellraw @a {"text": "現在の", "bold": true, "extra": [{"text": "鬼", "color": "red"},{"text": "チーム: "},{"selector": "@a[team=red]", "separator": ", ", "bold": false}]}

# リセット
tag @a[tag=TAG.tmp] remove TAG.tmp
