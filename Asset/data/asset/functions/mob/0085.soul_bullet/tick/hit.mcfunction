#> asset:mob/0085.soul_bullet/tick/hit
#
# ヒット時の処理
#
# @within function asset:mob/0085.soul_bullet/tick/

# ダメージ
    data modify storage api: Argument.Damage set value 36f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

# 消滅
    kill @s
