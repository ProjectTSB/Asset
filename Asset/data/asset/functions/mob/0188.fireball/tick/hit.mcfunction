#> asset:mob/0188.fireball/tick/hit
#
# ヒット判定
#
# @within function asset:mob/0188.fireball/tick/move

# ダメージ
    data modify storage api: Argument.Damage set value 30.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

# 自身にヒットTagを付与
    tag @s add 58.Hit

# 消失
    kill @s
