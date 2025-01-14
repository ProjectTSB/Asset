#> asset:mob/0089.decapitation/hurt/2.1.bone_drop
#
# 骨を落とす
#
# @within function asset:mob/0089.decapitation/hurt/

# 演出
    playsound entity.skeleton.death hostile @a ~ ~ ~
# 骨召喚
    summon item ~ ~ ~ {Motion:[0.0,0.5,0.0],Item:{id:"minecraft:bone",Count:1b}}

# 自爆ダメージ
    data modify storage lib: Argument.Damage set value 4f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.FixedDamage set value true
    function lib:damage/modifier
    function lib:damage/
    function lib:damage/reset
