#> asset:mob/0186.ferocious_bee/tick/damage
#
#
#
# @within function asset:mob/0186.ferocious_bee/tick/

# 演出
    playsound entity.bee.sting hostile @a ~ ~ ~ 1 1

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=!PlayerShouldInvulnerable,dx=0] run function api:damage/
    function api:damage/reset
