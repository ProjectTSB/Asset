#> asset:mob/0015.guardian/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/15/attack

# ダメージ設定
    data modify storage api: Argument.Damage set value 9.0f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @p[tag=Victim] run function api:damage/
    function api:damage/reset
