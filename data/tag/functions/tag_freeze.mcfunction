tag @s add TAG.freeze

tellraw @a {"text":"❄ ","color":"aqua","extra":[{"selector":"@s","bold":true},{"text":"が凍らされた！","bold":true}]}

item replace entity @s armor.legs with diamond_leggings
item modify entity @s armor.legs tag:freezeing
