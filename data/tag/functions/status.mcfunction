execute store result score #runner TAG.temp if entity @a[team=blue]
execute store result score #runner_alive TAG.temp if entity @a[team=blue,tag=!TAG.freeze]

title @a actionbar {"text":"生存人数    ","color":"aqua","bold":true,"extra":[{"score":{"name":"#runner_alive","objective":"TAG.temp"}},{"text":" / "},{"score":{"name":"#runner","objective":"TAG.temp"}}]}
