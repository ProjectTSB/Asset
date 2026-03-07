#> asset:mob/2003.abstract_eye/reflect/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2003/reflect

# 下がブロックなら上を向く
    execute at @s unless block ~ ~0.2 ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~-35

# 上がブロックなら下を向く
    execute at @s unless block ~ ~2.5 ~ #lib:no_collision/ run tp @s ~ ~ ~ ~ ~80

# カベにぶつかった際の処理
    execute store result storage asset:temp Args.Speed double 0.01 run attribute @s generic.movement_speed get 100
    function asset:mob/2003.abstract_eye/reflect/forward_block.m with storage asset:temp Args
    data remove storage asset:temp Args
