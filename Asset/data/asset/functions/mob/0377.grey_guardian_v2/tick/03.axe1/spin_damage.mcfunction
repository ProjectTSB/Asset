#> asset:mob/0377.grey_guardian_v2/tick/03.axe1/spin_damage
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/03.axe1/main


# 演出
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2
    function asset:mob/0377.grey_guardian_v2/tick/03.axe1/particle


# ダメージ設定
    # 与えるダメージ
        data modify storage lib: Argument.Damage set value 15.0f
    # 魔法属性
        data modify storage lib: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage lib: Argument.ElementType set value "None"
    # ダメージ
        function lib:damage/modifier
        execute as @e[type=#lib:living,tag=Friend,tag=!Uninterferable,tag=!PlayerShouldInvulnerable,distance=..6] at @s run function lib:damage/
# リセット
    function lib:damage/reset
