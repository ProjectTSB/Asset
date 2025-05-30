#> asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/damage
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/hyper_stab/recursive

# 多重ヒット防止判定
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..2] run function asset:mob/1004.tultaria/tick/skill/thunder/lightning_stab/check_player/

# ダメージ
    data modify storage api: Argument.Damage set value 60.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @a[tag=RW.TargetEntity,tag=!PlayerShouldInvulnerable,distance=..2] run function api:damage/
    function api:damage/reset
    tag @a[distance=..16] remove RW.TargetEntity
