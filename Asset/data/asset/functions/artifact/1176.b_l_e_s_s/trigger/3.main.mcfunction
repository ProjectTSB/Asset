#> asset:artifact/1176.b_l_e_s_s/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1176.b_l_e_s_s/trigger/2.check_condition


# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 発射
    execute if predicate lib:is_sneaking run data modify storage api: Argument.ID set value 1094
    execute if predicate lib:is_sneaking run data modify storage api: Argument.FieldOverride.InitMotionDamage set value 520f
    execute if predicate lib:is_sneaking run data modify storage api: Argument.FieldOverride.MaxDamage set value 2400

    execute unless predicate lib:is_sneaking run data modify storage api: Argument.ID set value 1095
    execute unless predicate lib:is_sneaking run data modify storage api: Argument.FieldOverride.InitMotionDamage set value 820f
    execute unless predicate lib:is_sneaking run data modify storage api: Argument.FieldOverride.MaxDamage set value 4000f

    execute store result storage api: Argument.FieldOverride.TargetID int 1 run scoreboard players get $WO.TargetID Temporary
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^-0.1 ^ ^ run function api:object/summon

        #tellraw @p [{"score":{"name": "$WO.TargetID","objective": "Temporary"}}]
# 発射音
    playsound minecraft:entity.breeze.hurt neutral @a[distance=..16] ~ ~ ~ 2 1.5 1
