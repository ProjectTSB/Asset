#> asset:artifact/0646.thorn_helm/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/646/equip/


# 水耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,646,6]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,646,6]
    data modify storage api: Argument.Amount set value 0.03
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 演出
    particle dust 0 0.2 0 1 ~ ~1.6 ~ 0.4 0.2 0.4 0 10 normal @a
    playsound minecraft:block.sweet_berry_bush.place player @a ~ ~ ~ 1 1 0

# フルセット
    execute if data storage asset:context id.all{head:646,chest:647,legs:648,feet:649} run function asset:artifact/0647.thorn_armor/equip/4.fullset
