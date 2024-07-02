#> asset:mob/0364.white_magic/tick/attack
#
# 攻撃の際の処理
#
# @within function asset:mob/0364.white_magic/tick/

# ダメージ
    data modify storage api: Argument.Damage set value 30.0d
    data modify storage api: Argument.AttackType set value "Magic"
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    #data modify storage api: Argument.DeathMessage append value '{"translate": "%1$sは%2$sによって","with":[{"selector":"@s"},{"nbt":"Return.AttackerName","storage":"lib:","interpret":true}]}'
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset
