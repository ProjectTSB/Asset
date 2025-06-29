#> asset:object/1015.call_fish/tick/find_target/recursive
#
#
#
# @within function
#   asset:object/1015.call_fish/tick/find_target/ready
#   asset:object/1015.call_fish/tick/find_target/recursive

# 再帰暴走防止スコア
    scoreboard players add $RecursiveLimit Temporary 1

# 複数の条件で再帰を中断する
    # スコアが一定以上ならreturn
        execute if score $RecursiveLimit Temporary matches 20.. run return fail

    # 0.5ブロック先がブロックならreturn
        execute unless block ^ ^ ^0.5 #lib:no_collision run return fail

    # 自身と接触したら自身にtag付与、そしてstorage設定してreturn
        execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run tag @s add 1015.Target
        execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run data modify storage asset:temp 1015.Hit set value 1b
        execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] run return fail

# 再帰
    execute positioned ^ ^ ^0.5 run function asset:object/1015.call_fish/tick/find_target/recursive
