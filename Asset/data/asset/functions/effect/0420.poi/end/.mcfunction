#> asset:effect/0420.poi/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0420.poi/_/end

#> private
# @within function asset:effect/0420.poi/end/*
    #declare score_holder $E0420.UserID
    #declare score_holder $E0420.Stack
    #declare score_holder $E0420.Damage
    #declare score_holder $E0420.MPHeal
    #declare tag E0420.Origin

# 攻撃者を取得
    execute store result score $E0420.UserID Temporary run data get storage asset:context this.OriginID
    execute as @a if score @s UserID = $E0420.UserID Temporary run tag @s add E0420.Origin

# 攻撃属性
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
# (スタック×this.Damage)ダメージ
    execute store result score $E0420.Stack Temporary run data get storage asset:context Stack
    execute store result score $E0420.Damage Temporary run data get storage asset:context this.Damage
    execute store result storage api: Argument.Damage double 1 run scoreboard players operation $E0420.Damage Temporary *= $E0420.Stack Temporary

# (スタック×this.MPHeal)だけMPを回復
    execute store result score $E0420.MPHeal Temporary run data get storage asset:context this.MPHeal 100
    execute store result storage api: Argument.AdditionalMPHeal double 0.01 run scoreboard players operation $E0420.MPHeal Temporary *= $E0420.Stack Temporary

    execute as @p[tag=E0420.Origin] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 攻撃したプレイヤーの処理
    execute as @p[tag=E0420.Origin] run tag @s remove E0420.Origin

# Object1211を削除
    function asset:effect/0420.poi/marker/remove

# 演出
    playsound entity.allay.hurt hostile @a ~ ~ ~ 1.0 2.0

# リセット
    scoreboard players reset $E0420.UserID
    scoreboard players reset $E0420.Stack
    scoreboard players reset $E0420.Damage
    scoreboard players reset $E0420.MPHeal
