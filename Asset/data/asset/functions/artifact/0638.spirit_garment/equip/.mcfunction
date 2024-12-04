#> asset:artifact/0638.spirit_garment/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/638/equip/


# 演出
    particle scrape ~ ~1.7 ~ 0.3 0.1 0.3 1.6 10 normal @a
    particle wax_off ~ ~1.7 ~ 0.3 0.1 0.3 1.6 10 normal @a
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1 2
    playsound entity.allay.ambient_without_item player @a ~ ~ ~ 1 1.7
    playsound block.amethyst_block.break player @a ~ ~ ~ 1 0.8

# 回復量+6%
    data modify storage api: Argument.UUID set value [I;1,1,638,6]
    data modify storage api: Argument.Amount set value 0.06
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/heal/add

# 物理耐性-5%
    data modify storage api: Argument.UUID set value [I;1,1,638,6]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/physical/add

# 最大体力+8
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-027e00000006 "MaxHealth" 8 add