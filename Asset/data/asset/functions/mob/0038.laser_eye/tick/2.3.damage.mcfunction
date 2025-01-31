#> asset:mob/0038.laser_eye/tick/2.3.damage
#
# ダメージ与える所
#
# @within function
#   asset:mob/0038.laser_eye/tick/2.2.shoot

# ダメージ
    data modify storage api: Argument.Damage set value 3.5f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @p[tag=LandingTarget,tag=!PlayerShouldInvulnerable,distance=..20,limit=1] run function api:damage/
    function api:damage/reset

# 着弾タグを消す
    tag @p[tag=LandingTarget,distance=..50,limit=1] remove LandingTarget
