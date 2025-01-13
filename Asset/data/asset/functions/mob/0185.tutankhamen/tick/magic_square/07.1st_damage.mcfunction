#> asset:mob/0185.tutankhamen/tick/magic_square/07.1st_damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/02.1st_square

# 与えるダメージ
    data modify storage api: Argument.Damage set value 25f
# 属性
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
# デスログ
    data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの溢れる魔力に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
# リセット
    function api:damage/reset
