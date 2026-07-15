#> asset:object/1179.yumeori_falling_arrow/tick/align_to_ground
#
#
#
# @within function
#   asset:object/1179.yumeori_falling_arrow/tick/
#   asset:object/1179.yumeori_falling_arrow/tick/align_to_ground

# デクリメント
    execute store result storage asset:context this.RecursiveLimit int 0.9999999999 run data get storage asset:context this.RecursiveLimit

# 各条件を満たした際、攻撃してreturnする
    # 再帰上限
        execute if data storage asset:context this{RecursiveLimit:0} run return run function asset:object/1179.yumeori_falling_arrow/tick/attack
    # ブロックに接触
        execute unless block ~ ~-0.5 ~ #lib:no_collision/without_fluid run return run function asset:object/1179.yumeori_falling_arrow/tick/attack

# 再帰
    execute positioned ~ ~-0.5 ~ run function asset:object/1179.yumeori_falling_arrow/tick/align_to_ground
