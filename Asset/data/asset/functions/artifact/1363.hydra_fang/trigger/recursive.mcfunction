#> asset:artifact/1363.hydra_fang/trigger/recursive
#
#
#
# @within function
#   asset:artifact/1363.hydra_fang/trigger/3.main
#   asset:artifact/1363.hydra_fang/trigger/recursive

# Attack.Toの最後尾のIDから順にダメージを与える
    data modify storage asset:temp Temp.MobUUID set from storage asset:temp Temp.To[-1]
    function asset:artifact/1363.hydra_fang/trigger/damage.m with storage asset:temp Temp
    data remove storage asset:temp Temp

# 最後尾の要素を削除
    data remove storage asset:temp Temp.To[-1]
    data remove storage asset:temp Temp.Amounts[-1]

# 要素がまだあれば再帰
    execute if data storage asset:temp Temp.To[0] run function asset:artifact/1363.hydra_fang/trigger/recursive
