#> asset:mob/0377.grey_guardian_v2/tick/04.axe2/damage
#
#
#
# @within function asset:mob/0377.grey_guardian_v2/tick/04.axe2/main

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 49.0f
# 魔法属性
    data modify storage lib: Argument.AttackType set value "Physical"
# 無属性
    data modify storage lib: Argument.ElementType set value "None"
# ダメージ
    function lib:damage/modifier
# プレイヤー用のダメージファンクション
    execute as @a[distance=..30] at @s run function asset:mob/0377.grey_guardian_v2/tick/04.axe2/damage_on_ground
# リセット
    function lib:damage/reset
