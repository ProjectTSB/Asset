#> asset:object/1057.giant_pumpkin/hit_entity/give_sweets/recursive
#
# ヒット数だけ再帰して確率でgiveする
#
# @within function
#   asset:object/1057.giant_pumpkin/hit_entity/high_speed_hit
#   asset:object/1057.giant_pumpkin/hit_entity/give_sweets/recursive

# 確率でお菓子をgive
    execute if predicate lib:random_pass_per/20 run function asset:object/1057.giant_pumpkin/hit_entity/give_sweets/give

# カウントを1減らす
    scoreboard players remove $HitCount Temporary 1

# 再帰
    execute if score $HitCount Temporary matches 0.. run function asset:object/1057.giant_pumpkin/hit_entity/give_sweets/recursive
