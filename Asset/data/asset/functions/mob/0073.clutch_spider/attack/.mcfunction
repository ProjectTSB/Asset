#> asset:mob/0073.clutch_spider/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/73/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# 演出
    execute at @p[tag=Victim] run particle poof ~ ~ ~ 0 0 0 0.2 10 normal
# 効果
    effect give @p[tag=Victim] slowness 7 0

# ダメージ設定
    data modify storage lib: Argument.Damage set value 20.0f
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @p[tag=Victim] run function lib:damage/
    function lib:damage/reset
