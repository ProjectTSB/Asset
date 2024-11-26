#> asset:mob/0410.heiloang/init/
#
# Mobのinit時の処理
#
# @within asset:mob/alias/410/init

# 継承元の処理実行
    function asset:mob/super.init

# 独自init処理
    # 中心点設置
        summon marker ~ ~ ~ {Tags:["BE.CenterPosition"]}
        execute as @e[type=marker,tag=BE.CenterPosition] at @s run tp @s ~ ~ ~ 0 0
    # 移動
        execute at @e[type=marker,tag=BE.CenterPosition] run tp @s ^ ^2 ^28 ~180 0
    # NBT設定
    # AjModelの召喚
        execute at @s run function animated_java:heiloang_aj/summon
    # AjModelのパーツに以下処理を実行する
        execute as @e[type=item_display,tag=BE.ModelRoot] on passengers if entity @s[type=item_display] run data merge entity @s {view_range:16f,width:0f,height:0f}

# テスト
    # 待機モーション再生
        execute as @e[type=item_display,tag=BE.ModelRoot] at @s run function animated_java:heiloang_aj/animations/1_idle/play
