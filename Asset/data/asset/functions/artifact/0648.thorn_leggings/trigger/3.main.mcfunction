#> asset:artifact/0648.thorn_leggings/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0648.thorn_leggings/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/legs

# ここから先は神器側の効果の処理を書く

# 水耐性
    data modify storage api: Argument.UUID set value [I;1,1,648,4]
    data modify storage api: Argument.Amount set value 0.04
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 雷耐性
    data modify storage api: Argument.UUID set value [I;1,1,648,4]
    data modify storage api: Argument.Amount set value 0.04
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 演出
    particle dust 0 0.2 0 1 ~ ~0.4 ~ 0.4 0.3 0.4 0 10 normal @a
    playsound minecraft:block.sweet_berry_bush.place player @a ~ ~ ~ 1 1 0

# フルセット
    execute if data storage asset:context id.all{head:646,chest:647,legs:648,feet:649} run function asset:artifact/0647.thorn_armor/trigger/4.fullset
