#> asset:mob/0341.louvert/tick/projectile/soul_bomb_hard/cast
#
# ボム設置
#
# @within function asset:mob/0341.louvert/tick/projectile/soul_bomb_hard/

# ボム設置
    # Markerを呼び出す
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 拡散値
        data modify storage lib: Argument.Bounds set value [[12d,12d],[0.5d,0.5d],[12d,12d]]
    # 拡散する
        execute as 0-0-0-0-0 at @s run function lib:spread_entity/
    # ボム召喚
        execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/8.bomb
    # 演出
        execute at 0-0-0-0-0 run particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 0.25 30 normal

    # Markerを呼び出す
        tp 0-0-0-0-0 ^ ^ ^ ~ ~
    # 拡散値
        data modify storage lib: Argument.Bounds set value [[12d,12d],[0.5d,0.5d],[12d,12d]]
    # 拡散する
        execute as 0-0-0-0-0 at @s run function lib:spread_entity/
    # ボム召喚
        execute at 0-0-0-0-0 run function asset:mob/0341.louvert/tick/general/8.bomb
    # 演出
        execute at 0-0-0-0-0 run particle minecraft:cloud ~ ~ ~ 0.25 0.25 0.25 0.25 30 normal

    # Makerを戻してあげる
        execute in overworld run tp 0-0-0-0-0 0.0 0.0 0.0

# スコアリセット
    execute store result score @s 9H.SoulBombHard run function lib:random/
    scoreboard players operation @s 9H.SoulBombHard %= $40 Const