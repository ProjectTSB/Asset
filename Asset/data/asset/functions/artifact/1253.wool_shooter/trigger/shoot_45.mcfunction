#> asset:artifact/1253.wool_shooter/trigger/shoot_45
#
#
#
# @within function
#   asset:artifact/1253.wool_shooter/trigger/3.main
#   asset:artifact/1253.wool_shooter/trigger/shoot_45

# 着弾検知
    execute unless block ^ ^ ^ #lib:no_collision run tag @s add Landing
# 羊毛は例外
    execute if block ^ ^ ^ #wool run tag @s remove Landing
# プレイヤーより周囲1mは除外（ただし、岩盤とかはのぞく
    execute if entity @s[distance=..1] unless block ~ ~ ~ #lib:unbreakable run tag @s remove Landing

# 羊毛設置
    execute if predicate api:area/is_breakable if block ~ ~ ~ #lib:air run setblock ^ ^ ^ white_wool replace

# 再帰
    execute positioned ^ ^ ^1.414 if entity @s[tag=YT.FullCharge,tag=!Landing,distance=..16] run function asset:artifact/1253.wool_shooter/trigger/shoot_45
    execute positioned ^ ^ ^1.414 if entity @s[tag=!YT.FullCharge,tag=!Landing,distance=..8] run function asset:artifact/1253.wool_shooter/trigger/shoot_45
