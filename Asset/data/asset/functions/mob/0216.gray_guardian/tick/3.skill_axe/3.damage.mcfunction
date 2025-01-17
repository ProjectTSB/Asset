#> asset:mob/0216.gray_guardian/tick/3.skill_axe/3.damage
#
#
#
# @within function asset:mob/0216.gray_guardian/tick/3.skill_axe/interval


# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 15.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..4] at @s run function api:damage/
# リセット
    function api:damage/reset
