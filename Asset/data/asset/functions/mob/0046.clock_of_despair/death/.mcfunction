#> asset:mob/0046.clock_of_despair/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/46/death

# 削除
    kill @e[type=armor_stand,tag=1A.ClockHand]
    kill @e[type=item_display,tag=1A.ClockFrame]
    kill @e[type=marker,tag=1A.SkillMarker]

# ボスドロ
    data modify storage api: Argument.ID set value 837
    data modify storage api: Argument.Important set value true
    function api:artifact/spawn/from_id
