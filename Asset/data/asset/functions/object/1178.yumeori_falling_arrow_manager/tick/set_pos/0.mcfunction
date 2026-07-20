#> asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/0
#
#
#
# @within function asset:object/1178.yumeori_falling_arrow_manager/tick/

# デクリメント
    execute store result storage asset:context this.Count int 0.9999999999 run data get storage asset:context this.Count

   # tellraw @a {"storage":"asset:context","nbt":"this"}

# 1発目に限り、前方の敵を優先する
    execute if data storage asset:context this{FirstShot:true} run function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/first/m with storage asset:context this.AttackRange
    execute if data storage asset:context this{FirstShot:true} run return run data modify storage asset:context this.FirstShot set value false

# 範囲内のランダムな敵の位置で攻撃
    function asset:object/1178.yumeori_falling_arrow_manager/tick/set_pos/1.select_target.m with storage asset:context this.AttackRange
