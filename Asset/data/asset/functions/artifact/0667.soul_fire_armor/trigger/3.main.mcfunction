#> asset:artifact/0667.soul_fire_armor/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/0667.soul_fire_armor/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/feet

# ここから先は神器側の効果の処理を書く

# 演出
    execute unless data storage asset:context id.all{head:664,chest:665,legs:666,feet:667} positioned ~ ~0.2 ~ facing entity @s eyes rotated ~ 0 run function asset:artifact/0664.soul_fire_armor/trigger/particle
    playsound block.fire.ambient player @a ~ ~ ~ 1.5 0.8 0
    playsound particle.soul_escape player @a ~ ~ ~ 2 0 0
    playsound block.sculk_sensor.clicking player @a ~ ~ ~ 0.8 0 0
    playsound ogg:mob.vex.idle1 player @a ~ ~ ~ 1 0 0

# 物理攻撃
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/physical/add

# 火耐性
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value 0.1
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/defense/fire/add

# 火攻撃
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value 0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/attack/fire/add

# MP回復量
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value 0.02
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/mp_regen/add

# 最大体力-10%
    data modify storage api: Argument.UUID set value [I;1,1,667,3]
    data modify storage api: Argument.Amount set value -0.05
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add

# フルセット検知
    execute if data storage asset:context id.all{head:664,chest:665,legs:666,feet:667} run function asset:artifact/0664.soul_fire_armor/trigger/fullset/
