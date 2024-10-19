#> asset:mob/0185.tutankhamen/tick/magic_square/10.4th_damage
#
#
#
# @within function asset:mob/0185.tutankhamen/tick/magic_square/05.4th_square

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 45f
# 属性
    data modify storage lib: Argument.AttackType set value "Magic"
    data modify storage lib: Argument.ElementType set value "None"
# デスログ
    data modify storage lib: Argument.DeathMessage append value '{"translate": "%1$sは%2$sの溢れる魔力に飲み込まれた","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..7] run function lib:damage/
# リセット
    function lib:damage/reset
