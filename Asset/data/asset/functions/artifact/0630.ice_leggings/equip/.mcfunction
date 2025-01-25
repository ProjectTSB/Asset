#> asset:artifact/0630.ice_leggings/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/630/equip/


# 水耐性+3%
    data modify storage api: Argument.UUID set value [I;1,1,630,4]
    data modify storage api: Argument.Amount set value 0.02
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/water/add

# 水攻撃+3%
    data modify storage api: Argument.UUID set value [I;1,1,630,4]
    data modify storage api: Argument.Amount set value 0.01
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/water/add

# 演出
    particle falling_dust diamond_block ~ ~0.4 ~ 0.4 0.3 0.4 0 5 normal @a
    particle falling_dust snow_block ~ ~0.4 ~ 0.4 0.3 0.4 0 5 normal @a
    playsound minecraft:block.glass.break player @a ~ ~ ~ 0.4 1.2 0

# フルセット
    execute if data storage asset:context id.all{head:628,chest:629,legs:630,feet:631} run function asset:artifact/0629.ice_armor/equip/4.fullset
