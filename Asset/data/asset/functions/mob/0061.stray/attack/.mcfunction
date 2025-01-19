#> asset:mob/0061.stray/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/61/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail

# ダメージ
    data modify storage lib: Argument.Damage set value 1.0
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Water"
    function lib:damage/modifier
    execute as @p[tag=Victim,distance=..32] run function lib:damage/
    function lib:damage/reset
