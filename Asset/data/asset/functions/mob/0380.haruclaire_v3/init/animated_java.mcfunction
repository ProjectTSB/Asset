#> asset:mob/0380.haruclaire_v3/init/animated_java
#
# Mobのinit時の処理
#
# @within asset:mob/0380.haruclaire_v3/init/

# AjModelの召喚
    execute at @s run function animated_java:haruclaire_aj/summon {args:{}}
    # AjModelのパーツに以下処理を実行する
        execute as @e[type=item_display,tag=AK.ModelRoot] run data merge entity @s {view_range:16f,width:0f,height:0f,teleport_duration:2}
        execute as @e[type=item_display,tag=AK.ModelRoot] on passengers if entity @s[type=item_display] run data merge entity @s {view_range:16f,width:0f,height:0f,teleport_duration:2}
    # 登場モーション再生
        execute as @e[type=item_display,tag=AK.ModelRoot] at @s run function animated_java:haruclaire_aj/animations/0_0_start/tween {duration:1, to_frame: 1}
