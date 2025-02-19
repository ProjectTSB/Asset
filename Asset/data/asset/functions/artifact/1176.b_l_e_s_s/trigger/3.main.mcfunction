#> asset:artifact/1176.b_l_e_s_s/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1176.b_l_e_s_s/trigger/2.check_condition


# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# 発射
    execute if predicate lib:is_sneaking run data modify storage api: Argument.ID set value 1094
#    execute unless predicate lib:is_sneaking run data modify storage api: Argument.ID set value 1095
    execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get $WO.TargetID Temporary
    function api:object/summon

    tellraw @p [{"score":{"name": "$WO.TargetID","objective": "Temporary"}}]
