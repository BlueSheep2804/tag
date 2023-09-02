# デバイスの移動
execute align xyz run tp @s ~0.5 ~ ~0.5

tellraw @a[gamemode=creative,sort=nearest,limit=1] [{"selector": "@s"}, {"text": "を移動しました", "color": "white"}]
