#> asset:mob/0185.tutankhamen/tick/burn_laser/06.damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/burn_laser/04.shoot

# 与えるダメージ
    data modify storage api: Argument.Damage set value 50f
# 属性
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
# デスログ
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって灰塵と化した","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @a[tag=LandingTarget,distance=..30] run function api:damage/
# リセット
    function api:damage/reset
    tag @a[tag=LandingTarget,distance=..30] remove LandingTarget
