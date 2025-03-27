#> asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/spin_damage
#
#
#
# @within function asset:mob/1005.illusion_of_loyalty/tick/moveset/skill/water/sword_spin/

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 20.0f
    # 属性1
        data modify storage api: Argument.AttackType set value "Physical"
    # 属性2
        data modify storage api: Argument.ElementType set value "Water"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..3] run function api:damage/
# リセット
    function api:damage/reset
