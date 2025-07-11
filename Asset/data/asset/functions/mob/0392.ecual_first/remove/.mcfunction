#> asset:mob/0392.ecual_first/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/392/remove

# モデル削除
    function animated_java:ecual/remove/all

# ディスプレイ削除
    kill @e[type=item_display,tag=AW.AnnounceLine,distance=..200]
    kill @e[type=item_display,tag=AW.AnnounceLineEven,distance=..200]
    kill @e[type=marker,tag=AW.Marker.SummonPoint,distance=..200]

# 継承元の処理
    function asset:mob/super.remove
