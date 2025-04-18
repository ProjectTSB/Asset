#> asset:mob/0412.tiamat/init/animated_java
#
# Mobのinit時の処理
#
# @within function asset:mob/0412.tiamat/init/

# AjModelの召喚
    execute at @s run function animated_java:tiamat_aj/summon {args:{}}
    # AjModelのパーツに以下処理を実行する
        execute as @e[type=item_display,tag=BG.ModelRoot] run data merge entity @s {view_range:16f,width:0f,height:0f,teleport_duration:2}
        execute as @e[type=item_display,tag=BG.ModelRoot] on passengers if entity @s[type=item_display] run data merge entity @s {view_range:16f,width:0f,height:0f,teleport_duration:2}
    # Locatorの初期化
        execute as @e[type=item_display,tag=BG.ModelRoot] run function animated_java:tiamat_aj/as_own_locator_entities {command:'function asset:mob/0412.tiamat/init/locator'}

# 登場モーション再生
    execute as @e[type=item_display,tag=BG.ModelRoot] at @s run function animated_java:tiamat_aj/animations/0_start/tween {duration:1, to_frame: 1}
