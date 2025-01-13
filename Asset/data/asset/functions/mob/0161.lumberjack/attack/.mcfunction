#> asset:mob/0161.lumberjack/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/161/attack

# 与えるダメージ
    data modify storage api: Argument.Damage set value 4.5f
# 属性
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
# 補正functionを実行
    function api:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..6] run function api:damage/
