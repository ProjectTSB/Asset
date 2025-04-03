#> asset:mob/0437.lawless_iron_doll/tick/base_move/walk/
#
# 歩行周りの処理
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/

# 近くのプレイヤーの方にゆっくりと向き直る
    execute facing entity @p[gamemode=!spectator,distance=..64] feet positioned ^ ^ ^-1 rotated as @s positioned ^ ^ ^-10 facing entity @s feet positioned as @s rotated ~ ~ run tp @s ~ ~ ~ ~ ~

# 歩行をスタート
    execute if score @s General.Mob.Tick matches 0 run function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/start

# 行動中じゃないなら、しばらく歩く
    execute if score @s General.Mob.Tick matches 0..60 run function asset:mob/0437.lawless_iron_doll/tick/base_move/walk/tick
