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
    data modify storage api: Argument.Damage set value 4f
# 第一属性
    data modify storage api: Argument.AttackType set value "Physical"
# 耐性を無視する
    data modify storage api: Argument.FixedDamage set value true
# 自爆する
    function api:damage/
# リセット
    function api:damage/reset
