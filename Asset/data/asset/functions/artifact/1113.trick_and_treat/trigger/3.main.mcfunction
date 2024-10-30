#> asset:artifact/1113.trick_and_treat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1113.trick_and_treat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 巨大カボチャを召喚
    execute rotated ~ 0 positioned ^ ^1.5 ^3 run function asset:artifact/1113.trick_and_treat/trigger/summon_pumpkin
    execute rotated ~ 0 positioned ^4.5 ^1.5 ^3 run function asset:artifact/1113.trick_and_treat/trigger/summon_pumpkin
    execute rotated ~ 0 positioned ^-4.5 ^1.5 ^3 run function asset:artifact/1113.trick_and_treat/trigger/summon_pumpkin
