#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/chain_lightning/weak/damage
#
# チェインライトニング部分のダメージ
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/chain_lightning/weak/thunder.recusrive

# ダメージ
    data modify storage api: Argument.Damage set value 10.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset
