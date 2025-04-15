#> asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/01.skill_slash/main

# パーティクル
    function asset:mob/0378.red_knight_v3/tick/01.skill_slash/particle

# ダメージ
    data modify storage api: Argument.Damage set value 20.0f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
    function api:damage/reset
