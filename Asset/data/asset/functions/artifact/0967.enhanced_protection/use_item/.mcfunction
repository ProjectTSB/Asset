#> asset:artifact/0967.enhanced_protection/use_item/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/967/use_item/

# ここから先は神器側の効果の処理を書く

execute if predicate lib:random_pass_per/30 run function asset:artifact/0967.enhanced_protection/use_item/add_mp

# 防御+55%
    data modify storage api: Argument.UUID set value [I;1,1,967,2]
    data modify storage api: Argument.Amount set value 0.55
    data modify storage api: Argument.Operation set value "multiply"
    execute unless entity @s[scores={QV.Protected=0..}] run function api:modifier/defense/base/add

# 攻撃力-75%
    data modify storage api: Argument.UUID set value [I;1,1,967,2]
    data modify storage api: Argument.Amount set value -0.75
    data modify storage api: Argument.Operation set value "multiply"
    execute unless entity @s[scores={QV.Protected=0..}] run function api:modifier/attack/base/add

# MP回復-100%
    data modify storage api: Argument.UUID set value [I;1,1,967,2]
    data modify storage api: Argument.Amount set value -1
    data modify storage api: Argument.Operation set value "multiply"
    execute unless entity @s[scores={QV.Protected=0..}] run function api:modifier/mp_regen/add

# 移動速度-50%
    attribute @s generic.movement_speed modifier add 1-0-1-0-3c700000002 "protection" -0.5 multiply

# 処理時間スコア付与
    scoreboard players set @s QV.Protected 2

# タグ
    schedule function asset:artifact/0967.enhanced_protection/use_item/schedule_task 1t