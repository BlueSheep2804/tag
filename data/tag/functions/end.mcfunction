scoreboard players set #enable TS_timer 0
scoreboard players set #tick TS_timer 0
bossbar set teamsupport:timer visible false

execute store result score #goal TAG.temp if entity @a[team=blue,tag=TAG.goal]
execute store result score #runner TAG.temp if entity @a[team=blue,tag=!TAG.goal]
execute store result score #runner_freezing TAG.temp if entity @a[team=blue,tag=TAG.freeze]
execute store result score #tagger TAG.temp if entity @a[team=red]

title @a title {"text": "ゲーム終了！"}
tellraw @a {"text":"最終結果\n","extra":[{"text":"鬼: ","color":"red","extra":[{"score":{"name":"#tagger","objective":"TAG.temp"}},{"text":"人"}]},{"text": "\n逃走成功者: ","color": "green","extra":[{"score":{"name": "#goal","objective": "TAG.temp"}},{"text": "人"}]},{"text":"\n逃げ遅れた逃走者: ","color":"blue","extra":[{"score":{"name":"#runner","objective":"TAG.temp"}},{"text":"人"}]},{"text":"(内凍ってる人: ","color":"aqua","extra":[{"score":{"name":"#runner_freezing","objective":"TAG.temp"}},{"text":"人)"}]}]}
