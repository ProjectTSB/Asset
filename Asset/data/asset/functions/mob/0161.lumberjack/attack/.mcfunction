#> asset:mob/0161.lumberjack/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/161/attack

# ダメージ
    data modify storage api: Argument.Damage set value 4.5f
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @p[tag=Victim,distance=..6] run function api:damage/
    function api:damage/reset
