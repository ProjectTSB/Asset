#> asset:mob/0046.clock_of_despair/remove/
#
#
#
# @within function asset:mob/alias/46/remove

# 削除
    kill @e[type=armor_stand,tag=1A.ClockHand]
    kill @e[type=item_display,tag=1A.ClockFrame]
    kill @e[type=marker,tag=1A.SkillMarker]
    kill @e[type=item_display,scores={ObjectID=2061..2062}]
    kill @e[type=marker,scores={ObjectID=2248..2252}]

# メイジたちとさようなら
    execute as @e[type=zombie,scores={MobID=187},distance=..30] run function api:mob/remove
    execute as @e[type=zombie,scores={MobID=189..190},distance=..30] run function api:mob/remove

# super 呼び出し
    function asset:mob/super.remove
