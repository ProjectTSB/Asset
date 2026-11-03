#> asset:effect/0420.poi/end/
#
# Effectの効果が切れた時の処理
#
# @within function asset:effect/0420.poi/_/end

#> private
# @within function asset:effect/0420.poi/end/*
    #declare score_holder $UserID
    #declare score_holder $Stack
    #declare score_holder $Damage
    #declare score_holder $MPHeal
    #declare tag 0420.Origin

# 攻撃者を取得
    execute store result score $UserID Temporary run data get storage asset:context this.OriginID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 0420.Origin

# 攻撃属性
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "None"
# (スタック×this.Damage)ダメージ
    execute store result score $Stack Temporary run data get storage asset:context Stack
    execute store result score $Damage Temporary run data get storage asset:context this.Damage
    execute store result storage api: Argument.Damage double 1 run scoreboard players operation $Damage Temporary *= $Stack Temporary

# (スタック×this.MPHeal)だけMPを回復
    execute store result score $MPHeal Temporary run data get storage asset:context this.MPHeal 100
    execute store result storage api: Argument.AdditionalMPHeal double 0.01 run scoreboard players operation $MPHeal Temporary *= $Stack Temporary

    execute as @p[tag=0420.Origin] run function api:damage/modifier
    function api:damage/
    function api:damage/reset

# 攻撃したプレイヤーの処理
    execute as @p[tag=0420.Origin] run tag @s remove 0420.Origin

# 演出
    playsound entity.allay.hurt hostile @a ~ ~ ~ 1.0 2.0

# リセット
    scoreboard players reset $UserID Temporary
    scoreboard players reset $Stack Temporary
    scoreboard players reset $Damage Temporary
    scoreboard players reset $MPHeal Temporary
