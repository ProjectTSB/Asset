#> asset:artifact/1556.bubble_spreader/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/1556.bubble_spreader/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# 演出
    playsound block.conduit.activate player @a ~ ~ ~ 0.7 1.5 0

# 弾を5回召喚する
    execute anchored eyes positioned ^ ^-0.35 ^0.3 rotated ~ ~-5 run function asset:artifact/1556.bubble_spreader/trigger/summon_object
    execute anchored eyes positioned ^ ^-0.35 ^0.3 rotated ~ ~-5 run function asset:artifact/1556.bubble_spreader/trigger/summon_object
    execute anchored eyes positioned ^ ^-0.35 ^0.3 rotated ~ ~-5 run function asset:artifact/1556.bubble_spreader/trigger/summon_object
    execute anchored eyes positioned ^ ^-0.35 ^0.3 rotated ~ ~-5 run function asset:artifact/1556.bubble_spreader/trigger/summon_object
    execute anchored eyes positioned ^ ^-0.35 ^0.3 rotated ~ ~-5 run function asset:artifact/1556.bubble_spreader/trigger/summon_object
