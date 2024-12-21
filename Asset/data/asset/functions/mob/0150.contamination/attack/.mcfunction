#> asset:mob/0150.contamination/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/150/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# ガス召喚
    execute at @p[tag=Victim,distance=..32] run function asset:mob/0150.contamination/gus_summon

# 与えるダメージ
    data modify storage lib: Argument.Damage set value 41f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset
