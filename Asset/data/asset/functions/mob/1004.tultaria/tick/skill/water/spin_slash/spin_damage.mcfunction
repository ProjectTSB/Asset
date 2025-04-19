#> asset:mob/1004.tultaria/tick/skill/water/spin_slash/spin_damage
#
#
#
# @within function asset:mob/1004.tultaria/tick/skill/water/spin_slash/tick

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 50.0f
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "Water"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset
