#> asset:mob/0429.killer_bee_formation/tick/damage
#
#
#
# @within function asset:mob/0429.killer_bee_formation/tick/charge

# 多重ヒット防止判定
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=!PlayerShouldInvulnerable,dx=0] run function asset:mob/0429.killer_bee_formation/tick/check_hit/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @a[tag=BX.Hit,dx=0] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=BX.Hit] remove BX.Hit
