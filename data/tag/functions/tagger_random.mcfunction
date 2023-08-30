execute store success score #success TAG.temp run tag @a[scores={TS_team_entry=2},team=!red,sort=random,limit=1] add TAG.tmp

execute if score #success TAG.temp matches 1 if score $can_select_team TS_settings matches 1 as @a[tag=TAG.tmp] at @s run team join red
execute if score #success TAG.temp matches 1 if score $can_select_team TS_settings matches 0 as @a[tag=TAG.tmp] at @s run team join red

execute if score #success TAG.temp matches 0 run tellraw @a {"text": "誰も鬼に加わろうとしませんでした...", "color": "red", "bold": true}
execute if score #success TAG.temp matches 1 run tellraw @a {"selector": "@a[tag=TAG.tmp]", "bold": true, "extra": [{"text": "が鬼に加わりました!", "color": "white"}]}

tellraw @a {"text": "現在の", "bold": true, "extra": [{"text": "鬼", "color": "red"},{"text": "チーム: "},{"selector": "@a[team=red]", "separator": ", ", "bold": false}]}

tag @a[tag=TAG.tmp] remove TAG.tmp
