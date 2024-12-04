#> asset:artifact/0667.soul_fire_armor/equip/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/667/equip/


# 演出
    execute unless data storage asset:context id.all{head:664,chest:665,legs:666,feet:667} positioned ~ ~0.2 ~ facing entity @s eyes rotated ~ 0 run function asset:artifact/0664.soul_fire_armor/equip/particle
    playsound block.fire.ambient player @a ~ ~ ~ 1.5 0.8 0
    playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    playsound block.sculk_sensor.clicking player @a ~ ~ ~ 0.8 0 0
    playsound ogg:mob.vex.idle1 player @a ~ ~ ~ 1 0 0

# 物理攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 火耐性+10%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 火攻撃+10%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# MP回復量+8%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value 0.08
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 最大体力-10%
    attribute @s generic.max_health modifier add 00000001-0000-0001-0000-029b00000003 "MaxHealthDown" -0.1 multiply_base

# 最大体力を反映するための即時回復
    effect give @s instant_health 1 0

# フルセット検知
    execute if data storage asset:context id.all{head:664,chest:665,legs:666,feet:667} run function asset:artifact/0664.soul_fire_armor/equip/fullset/