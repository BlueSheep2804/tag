# 人数をスコアに代入
execute store result score #runner TAG.temp if entity @a[team=blue,tag=!TAG.goal]
execute store result score #runner_alive TAG.temp if entity @a[team=blue,tag=!TAG.goal,tag=!TAG.freeze]

title @a actionbar {"text":"生存人数    ","color":"aqua","bold":true,"extra":[{"score":{"name":"#runner_alive","objective":"TAG.temp"}},{"text":" / "},{"score":{"name":"#runner","objective":"TAG.temp"}}]}
