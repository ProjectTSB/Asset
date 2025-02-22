#> asset:mob/0378.red_knight_v3/tick/01.skill_slash/slash_wave
#
#
#
# @within function asset:mob/0378.red_knight_v3/tick/01.skill_slash/main

# パーティクル
    function asset:mob/0378.red_knight_v3/tick/01.skill_slash/particle

# 判定
    # ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 20.0f
    # 物理属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset
