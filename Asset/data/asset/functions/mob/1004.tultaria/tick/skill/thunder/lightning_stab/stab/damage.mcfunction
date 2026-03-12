#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/stab/damage
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/tick

# 多重ヒット防止判定
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..20] run function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/check_player/

# ダメージ
    data modify storage api: Argument.Damage set value 50.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=RW.TargetEntity,distance=..2] run function api:damage/
    function api:damage/reset
    tag @a[tag=RW.TargetEntity] remove RW.TargetEntity
