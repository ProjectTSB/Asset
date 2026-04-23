#> asset:mob/0186.ferocious_bee/tick/damage/
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/move/charge

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.Metadata set value "186.Attack"
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0186.ferocious_bee/tick/damage/check_duplicate
    function api:damage/reset
