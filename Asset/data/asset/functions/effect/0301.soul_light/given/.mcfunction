#> asset:effect/0301.soul_light/given/
#
# Effectが付与された時の処理
#
# @within function asset:effect/0301.soul_light/_/given

# this.Healをスコアへ移して保存(e1)
    execute store result score @s 301.LatestHeal run data get storage asset:context this.Heal 10

# this.UserIDをスコアへ移して保存
    execute store result score @s 301.LatestUserID run data get storage asset:context this.UserID
