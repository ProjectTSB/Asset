#> asset:mob/0341.louvert/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0341.louvert/death/1.trigger

## デバッグ処理
    # AnimatedJavaモデルの削除
        function animated_java:louvert/remove/all
    # Marker削除
        kill @e[type=marker,tag=9H.Marker.SummonPoint]
        kill @e[type=item_display,tag=9H.Final.Display]
        kill @e[type=item_display,tag=9H.Final.Display.Bullet]
        kill @e[type=item_display,tag=9H.FireMagic]
        kill @e[type=marker,tag=9H.Meteor]
        kill @e[type=item_display,tag=9H.Meteor.Display]
        kill @e[type=item_display,tag=9H.Bullet]
        kill @e[type=marker,tag=9H.SoulQuake]
        kill @e[type=marker,tag=9H.SoulQuakeHard]