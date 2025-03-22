#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/damage
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/recursive

# ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset
