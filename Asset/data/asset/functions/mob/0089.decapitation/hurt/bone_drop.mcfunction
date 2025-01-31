#> asset:mob/0089.decapitation/hurt/bone_drop
#
# 骨を落とす
#
# @within function asset:mob/0089.decapitation/hurt/

# 演出
    playsound entity.skeleton.death hostile @a ~ ~ ~
# 骨召喚
    summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}

# 自爆ダメージ
    data modify storage api: Argument.Damage set value 4f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.FixedDamage set value true
    function api:damage/modifier
    function api:damage/
    function api:damage/reset
