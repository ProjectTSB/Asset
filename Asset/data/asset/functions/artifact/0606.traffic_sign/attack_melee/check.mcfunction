#> asset:artifact/0606.traffic_sign/attack_melee/check
#
# 神器の使用条件の確認処理
#
# @within function asset:artifact/alias/606/attack_melee/check

# 先にLatestUseTickを取っておく
    execute store result score $GU.LatestUseTick Temporary run data get storage asset:context Items.mainhand.tag.TSB.LatestUseTick

# リセット
    scoreboard players reset $GU.LatestUseTick Temporary
