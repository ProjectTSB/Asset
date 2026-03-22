#> asset:mob/0255.dependence_eye/tick/attack
#
#
#
# @within function asset:mob/0255.dependence_eye/tick/

# VFX
    playsound minecraft:block.wart_block.break hostile @a ~ ~ ~ 2 1

# ダメージ設定
    data modify storage api: Argument.Damage set value 16f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset

# クールタイム設定
    data modify storage asset:context this.AttackCT set value 20
