#> asset:artifact/0624.flame_helm/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/624/equip/


# 火耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,624,6]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 火攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,624,6]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# 演出
    particle flame ~ ~1.6 ~ 0.4 0.2 0.4 0 10 normal @a
    playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.4 1

# 一式検知
    execute if data storage asset:context id.all{head:624,chest:625,legs:626,feet:627} run function asset:artifact/0625.flame_armor/equip/4.fullset