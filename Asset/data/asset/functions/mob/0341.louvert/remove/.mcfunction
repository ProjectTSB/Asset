#> asset:mob/0341.louvert/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/341/remove

# キル処理
    kill @e[type=item_display,tag=9H.Final.Display]
    kill @e[type=item_display,tag=9H.Final.Display.Bullet]
    kill @e[type=marker,tag=9H.Marker.SummonPoint]

# AnimatedJavaモデルの削除
    function animated_java:louvert/remove/all

# 継承元の処理
    function asset:mob/super.remove

# AJアンロード
    data modify storage asset:datapack ActivationState set value [{Datapack:"AJ_louvert",Active:false}]
    function asset:datapack/set_activation_state
