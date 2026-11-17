#> asset:artifact/1651.rune_blaster/keep_using_item/beam/recursive
#
#
#
# @within function
#   asset:artifact/1651.rune_blaster/keep_using_item/beam/
#   asset:artifact/1651.rune_blaster/keep_using_item/beam/recursive

# Range - 1
    scoreboard players remove $Range Temporary 1

# 演出
    particle dust 0.67 0.58 1 0.3 ~ ~ ~ 0.01 0.01 0.01 0 1

# 以下の条件で再帰を終了
    # Rangeが0
        execute if score $Range Temporary matches ..0 run return fail
    # 前方がブロック
        execute unless block ^ ^ ^0.5 #lib:no_collision/ run return fail
    # 敵がいる場合はダメージ与えて終了する
        execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] at @s run return run function asset:artifact/1651.rune_blaster/keep_using_item/beam/damage

# 再帰
    execute positioned ^ ^ ^0.5 run function asset:artifact/1651.rune_blaster/keep_using_item/beam/recursive
