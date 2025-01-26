#> asset:artifact/1113.trick_and_treat/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1113.trick_and_treat/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 巨大カボチャを召喚
# 2個目と3個目はStartDelayを設定して召喚する

# 1個目
    execute rotated ~ 0 positioned ^ ^1.5 ^3 run function asset:artifact/1113.trick_and_treat/trigger/summon_pumpkin

# 2個目
    data modify storage api: Argument.FieldOverride.StartDelay set value 5
    execute rotated ~ 0 positioned ^4.5 ^1.5 ^ run function asset:artifact/1113.trick_and_treat/trigger/summon_pumpkin

# 3個目
    data modify storage api: Argument.FieldOverride.StartDelay set value 10
    execute rotated ~ 0 positioned ^-4.5 ^1.5 ^ run function asset:artifact/1113.trick_and_treat/trigger/summon_pumpkin
