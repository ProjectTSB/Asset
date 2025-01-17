#> asset:mob/0022.red_knight/tick/skill_sword/2.skill_sword_damage
#
#
#
# @within function asset:mob/0022.red_knight/tick/skill_sword/1.skill_sword

# ダメージ設定
    # 与えるダメージ
        data modify storage api: Argument.Damage set value 50.0f
    # 魔法属性
        data modify storage api: Argument.AttackType set value "Physical"
    # 無属性
        data modify storage api: Argument.ElementType set value "None"
    # ダメージ
        function api:damage/modifier
        execute as @a[tag=!PlayerShouldInvulnerable,distance=..4] at @s run function api:damage/
# リセット
    function api:damage/reset
