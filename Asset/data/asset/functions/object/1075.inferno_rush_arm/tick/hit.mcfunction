#> asset:object/1075.inferno_rush_arm/tick/hit
#
#
#
# @within function asset:object/1075.inferno_rush_arm/tick/

#> tag
# @private
    #declare score_holder $RandomDamage
    #declare tag HitTarget

# ヒット対象を探す
    data modify storage lib: args.dx set value 1.6
    data modify storage lib: args.dy set value 1.6
    data modify storage lib: args.dz set value 2.4
    data modify storage lib: args.selector set value "@e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,distance=..5]"
    function lib:rotatable_dxyz/m with storage lib: args

# DXYZが付与された敵がいなければreturn
    execute unless entity @e[type=#lib:living,tag=DXYZ,tag=!Uninterferable,distance=..5] run return fail

# 演出
    execute at @e[type=#lib:living,tag=DXYZ,tag=!Uninterferable,distance=..5] run particle flame ~ ~1.4 ~ 0 0 0 0.3 3
    execute at @e[type=#lib:living,tag=DXYZ,tag=!Uninterferable,distance=..5] run particle lava ~ ~1.4 ~ 0 0 0 0 0
    playsound entity.player.attack.knockback neutral @a ~ ~ ~ 1 1

# ダメージ
    execute store result storage api: Argument.Damage float 1 run function asset:object/1075.inferno_rush_arm/tick/get_damage.m with storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    execute as @p[tag=1075.Owner] run function api:damage/modifier
    execute as @e[type=#lib:living,tag=DXYZ,tag=!Uninterferable,distance=..5] run function api:damage/
    function api:damage/reset

# ノクバ耐性を考慮して吹っ飛ばす
    data modify storage lib: Argument.VectorMagnitude set value -0.1
    data modify storage lib: Argument.KnockbackResist set value true
    execute facing entity @p[tag=1075.Owner] eyes as @e[type=#lib:living,tag=DXYZ,tag=!Uninterferable,distance=..5] run function lib:motion/

# リセット
    tag @e[type=#lib:living,tag=DXYZ,tag=!Uninterferable,distance=..5] remove DXYZ
