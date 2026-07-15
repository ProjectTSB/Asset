#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/4.align_to_ground/recursive
#
#
#
# @within function
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/4.align_to_ground/
#   asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/4.align_to_ground/recursive

# デクリメント
    execute store result storage asset:temp RecursiveLimit int 0.9999999999 run data get storage asset:temp RecursiveLimit

# 各条件を満たした際、攻撃してreturnする
    # 再帰上限
        execute if data storage asset:temp {RecursiveLimit:0} run return run function asset:object/1178.yumeori_falling_arrow_manager/tick/summon
    # ブロックに接触
        execute unless block ~ ~-0.5 ~ #lib:no_collision/without_fluid run return run function asset:object/1178.yumeori_falling_arrow_manager/tick/summon

# 再帰
    execute positioned ~ ~-0.5 ~ run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/4.align_to_ground/recursive
