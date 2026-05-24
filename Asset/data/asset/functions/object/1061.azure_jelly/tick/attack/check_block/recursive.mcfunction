#> asset:object/1061.azure_jelly/tick/attack/check_block/recursive
#
#
#
# @within function
#   asset:object/1061.azure_jelly/tick/attack/check_block/
#   asset:object/1061.azure_jelly/tick/attack/check_block/recursive

# 再帰防止スコアをインクリメント
    scoreboard players add $Recursive Temporary 1

# 成功
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run data modify storage asset:temp 1061.Success set value true

# 0.5ブロックずつ再帰
    execute if score $Recursive Temporary matches ..14 positioned ^ ^ ^0.5 if block ~ ~ ~ #lib:no_collision/ run function asset:object/1061.azure_jelly/tick/attack/check_block/recursive
