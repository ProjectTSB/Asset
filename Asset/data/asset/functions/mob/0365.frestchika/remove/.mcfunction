#> asset:mob/0365.frestchika/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/365/remove

# Super!
    function asset:mob/super.remove

# モデルを削除
    execute as @e[type=item_display,tag=A5.ModelRoot,sort=nearest,limit=1] run function animated_java:frestchika/remove/this

# マーカーを片付ける
    kill @e[type=marker,tag=A5.Marker,distance=..64]
