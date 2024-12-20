#> asset:mob/0341.louvert/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/341/death

# キル処理
    kill @e[type=item_display,tag=9H.Final.Display]
    kill @e[type=item_display,tag=9H.Final.Display.Bullet]

# スケジュール起動
    tag @e[type=marker,tag=9H.Marker.SummonPoint,distance=..200] add 9H.Death
    schedule function asset:mob/0341.louvert/death/schedule 1t

# 継承元の処理
    function asset:mob/super.death
