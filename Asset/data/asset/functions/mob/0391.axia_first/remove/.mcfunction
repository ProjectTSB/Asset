#> asset:mob/0391.axia_first/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/391/remove

# モデル削除
    function animated_java:axia/remove/all

# ディスプレイ削除
    kill @e[type=item_display,tag=AV.AnnounceLine,distance=..200]
    kill @e[type=marker,tag=AV.Marker.SummonPoint,distance=..200]

# 継承元の処理
    function asset:mob/super.remove
