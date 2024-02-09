#> asset:mob/0341.louvert/death/2.death
#
# Mobの死亡時の処理
#
# @within function asset:mob/0341.louvert/death/1.trigger

# キル処理
    kill @e[type=item_display,tag=9H.Final.Display]
    kill @e[type=item_display,tag=9H.Final.Display.Bullet]
    kill @e[type=item_display,tag=9H.FireMagic]
    kill @e[type=marker,tag=9H.Meteor]
    kill @e[type=item_display,tag=9H.Meteor.Display]
    kill @e[type=item_display,tag=9H.Bullet]
    kill @e[type=marker,tag=9H.SoulQuake]
    kill @e[type=marker,tag=9H.SoulQuakeHard]

# スケジュール起動
    schedule function asset:mob/0341.louvert/death/2.1.schedule 1t