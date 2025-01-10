#> asset:mob/0410.heiloang/init/animated_java
#
# 初期化処理 Aj関連
#
# @within asset:mob/0410.heiloang/init/

# AjModelの召喚
    execute at @s run function animated_java:heiloang_aj/summon {args:{}}
    # AjModelのパーツに以下処理を実行する
        execute as @e[type=item_display,tag=BE.ModelRoot] run data merge entity @s {view_range:16f,width:0f,height:0f,teleport_duration:2}
        execute as @e[type=item_display,tag=BE.ModelRoot] on passengers if entity @s[type=item_display] run data merge entity @s {view_range:16f,width:0f,height:0f,teleport_duration:2}
    # Locatorの初期化
        execute as @e[type=item_display,tag=BE.ModelRoot] run function animated_java:heiloang_aj/as_own_locator_entities {command:'function asset:mob/0410.heiloang/init/locator'}

# テスト
    # 待機モーション再生
        # execute as @e[type=item_display,tag=BE.ModelRoot] at @s run function animated_java:heiloang_aj/animations/1_idle/tween {duration:1, to_frame: 1}
