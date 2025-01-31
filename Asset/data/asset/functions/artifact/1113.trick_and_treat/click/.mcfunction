#> asset:artifact/1113.trick_and_treat/click/
#
# 神器のトリガー処理
#
# @within function asset:artifact/alias/1113/click/


# 巨大カボチャを召喚
# 2個目と3個目はStartDelayを設定して召喚する

# 1個目
    execute rotated ~ 0 positioned ^ ^1.5 ^3 run function asset:artifact/1113.trick_and_treat/click/summon_pumpkin

# 2個目
    data modify storage api: Argument.FieldOverride.StartDelay set value 5
    execute rotated ~ 0 positioned ^4.5 ^1.5 ^ run function asset:artifact/1113.trick_and_treat/click/summon_pumpkin

# 3個目
    data modify storage api: Argument.FieldOverride.StartDelay set value 10
    execute rotated ~ 0 positioned ^-4.5 ^1.5 ^ run function asset:artifact/1113.trick_and_treat/click/summon_pumpkin
