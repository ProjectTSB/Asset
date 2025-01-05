#> asset:mob/0174.burning_blaze/attack/
#
# Mobの攻撃時の処理
#
# @within function asset:mob/alias/174/attack

# バニラの攻撃じゃなかったら return
    execute unless data storage asset:context Attack{IsVanilla:true} run return fail


# 与えるダメージ
    data modify storage lib: Argument.Damage set value 28f
# 属性
    data modify storage lib: Argument.AttackType set value "Physical"
    data modify storage lib: Argument.ElementType set value "Fire"
# 補正functionを実行
    function lib:damage/modifier
# 対象
    execute as @p[gamemode=!spectator,tag=Victim,distance=..32] run function lib:damage/
# リセット
    function lib:damage/reset
