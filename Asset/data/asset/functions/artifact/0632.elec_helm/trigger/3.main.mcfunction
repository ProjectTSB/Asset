#> asset:artifact/0632.elec_helm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0632.elec_helm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/head

# ここから先は神器側の効果の処理を書く

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,632,6]
    data modify storage api: Argument.Amount set value 0.02
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/thunder/add

# 雷耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,632,6]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/thunder/add

# 演出
    particle dust 1 1 0 1 ~ ~1.6 ~ 0.4 0.2 0.4 0 6 normal @a
    particle firework ~ ~1.6 ~ 0.4 0.2 0.4 0 6 normal @a
    playsound minecraft:entity.firework_rocket.twinkle player @a ~ ~ ~ 0.4 1.5 0

# 一式効果
    execute if data storage asset:context id.all{head:632,chest:633,legs:634,feet:635} run function asset:artifact/0633.elec_armor/trigger/4.fullset
