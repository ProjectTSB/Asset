#> asset:mob/2003.abstract_eye/reflect/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/2003/reflect

# 正面のブロックにぶつかった際の処理
    execute store result storage asset:temp 2003.Speed float 0.005 run data get storage asset:context this.Speed 100
    execute anchored eyes positioned ^ ^ ^ run function asset:mob/2003.abstract_eye/reflect/forward_block.m with storage asset:temp 2003
    execute if data storage asset:temp 2003{Check:true} run tp @s ~ ~ ~ ~45 ~-45
    data remove storage asset:temp 2003

# 下がブロックなら上を向く
    execute at @s anchored eyes positioned ^ ^ ^ unless block ~ ~-0.68 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~-35

# 上がブロックなら下を向く
    execute at @s anchored eyes positioned ^ ^ ^ unless block ~ ~0.82 ~ #lib:no_collision/ at @s run tp @s ~ ~ ~ ~ ~80
