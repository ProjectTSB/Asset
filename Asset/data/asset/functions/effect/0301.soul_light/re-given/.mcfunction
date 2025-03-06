#> asset:effect/0301.soul_light/re-given/
#
# Effectが上書きされた時の処理
#
# @within function asset:effect/0301.soul_light/_/re-given

#> Private
# @private
    #declare score_holder $Heal

# 301.LatestHealとthis.Healを比較し、大きい方をthis.Healに入れる
    execute store result score $Heal Temporary run data get storage asset:context this.Heal 10

# $Healの方が大きいならそのまま
# LatestHealの方が大きいなら、スコアのデータをフィールドへ代入
    execute if score $Heal Temporary < @s 301.LatestHeal store result storage asset:context this.Heal float 0.1 run scoreboard players get @s 301.LatestHeal
    execute if score $Heal Temporary < @s 301.LatestHeal store result storage asset:context this.UserID float 0.1 run scoreboard players get @s 301.LatestUserID

# リセット
    scoreboard players reset $Heal Temporary
