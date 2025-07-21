#> asset:mob/0393.labyria_first/remove/
#
# 天使が居なくなる際に実行される処理
#
# @within asset:mob/alias/393/remove

# モデル削除
    function animated_java:labyria/remove/all

# マーカーキル
    kill @e[type=marker,tag=AX.Marker.SummonPoint,distance=..200]

# 継承元の処理
    function asset:mob/super.remove
