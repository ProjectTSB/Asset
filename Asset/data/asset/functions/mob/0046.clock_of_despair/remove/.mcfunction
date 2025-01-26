#> asset:mob/0046.clock_of_despair/remove/
#
#
#
# @within function asset:mob/alias/46/remove

# 削除
    kill @e[type=armor_stand,tag=1A.ClockHand]
    kill @e[type=item_display,tag=1A.ClockFrame]
    kill @e[type=marker,tag=1A.SkillMarker]

# super 呼び出し
    function asset:mob/super.remove
