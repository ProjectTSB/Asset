#> asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/recursive
#
#
#
# @within function
#   asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/
#   asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/recursive

# デクリメント
    scoreboard players remove $RecursiveLimit Temporary 1

# return
    # 再帰限界
        execute if score $RecursiveLimit Temporary matches ..0 run return fail
    # 前方判定
        execute unless block ^ ^ ^0.5 #lib:no_collision/ run return fail
    # 各ベクトル判定
        execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned ~ 0.0 0.0 positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.25 rotated as @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision/ run return fail
        execute rotated ~180 ~ positioned ^ ^ ^0.25 rotated ~-180 ~ positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision/ run return fail
        execute positioned 0.0 0.0 0.0 positioned ^ ^ ^-1 positioned 0.0 0.0 ~ positioned ^ ^ ^0.5 facing 0.0 0.0 0.0 positioned as @s positioned ^ ^ ^0.25 rotated as @s positioned ^ ^ ^0.25 unless block ~ ~ ~ #lib:no_collision/ run return fail

# 敵がいればtagを付与して終了
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,dx=0,limit=1] run return run tag @s add Target

# 再帰
    execute positioned ^ ^ ^0.5 run function asset:artifact/1606.dimension_knife/click/2.check_condition/find_enemy/recursive
