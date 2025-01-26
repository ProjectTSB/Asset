#> asset:artifact/1149.afterglow_of_thunder/attack/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/1149/attack/check

#> Private
# @private
    #declare score_holder $1149.Damage

# 雷属性攻撃ならダメージを加算
# 10倍として計算
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Thunder} store result score $1149.Damage Temporary run data get storage asset:context Attack.Amount 10
    execute if entity @s[tag=CanUsed] if data storage asset:context Attack{ElementType:Thunder} run scoreboard players operation @s VX.DamageSum += $1149.Damage Temporary

# 累計スコアが80000未満ならCanUsedを削除
    execute if entity @s[tag=CanUsed] unless entity @s[scores={VX.DamageSum=80000..}] run tag @s remove CanUsed

# リセット
    scoreboard players reset $1149.Damage Temporary
