#> asset:artifact/1613.horn_of_thunderbolt/trigger/as_victim
#
#
#
# @within function asset:artifact/1613.horn_of_thunderbolt/trigger/3.main

# 演出用Object
    data modify storage api: Argument.ID set value 1184
    function api:object/summon

# playsound
    particle smoke ~ ~0.1 ~ 0 0 0 0.25 20 normal @a
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.35 1.9
    playsound entity.zombie.break_wooden_door player @a ~ ~ ~ 0.4 1
    playsound ogg:mob.breeze.deflect1 player @a ~ ~ ~ 1 0.7
    playsound block.mangrove_roots.break player @a ~ ~ ~ 1 1

# ダメージ
    execute store result storage api: Argument.Damage double 1 run random value 300..400
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute as @p[tag=this] run function api:damage/modifier
    function api:damage/
    function api:damage/reset
