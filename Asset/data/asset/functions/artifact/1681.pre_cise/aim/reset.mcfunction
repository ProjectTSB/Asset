#> asset:artifact/1681.pre_cise/aim/reset
#
# 自身の1AP.AimMobUUIDを消す
# スニーク中でない間、狙う敵の保存が残らないようにする
#
# @input as player
# @within function
#   asset:artifact/1681.pre_cise/keep/objects
#   asset:artifact/1681.pre_cise/tick/2.check_condition

    scoreboard players reset @s 1AP.AimMobUUID
