#> asset:mob/0175.queen_bee/tick/skill/tackle_formation/damage
#
#
#
# @within function asset:mob/0175.queen_bee/tick/skill/tackle_formation/tackle

# 重複ヒット防止判定
    execute as @a[tag=DXYZ,tag=!PlayerShouldInvulnerable,distance=..5] run function asset:mob/0175.queen_bee/tick/skill/tackle_formation/check_hit/

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage.TackleFormation
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=4V.Hit,tag=!PlayerShouldInvulnerable,distance=..5] run function api:damage/
    function api:damage/reset

# リセット
    tag @a[tag=4V.Hit,tag=!PlayerShouldInvulnerable,distance=..5] remove 4V.Hit
