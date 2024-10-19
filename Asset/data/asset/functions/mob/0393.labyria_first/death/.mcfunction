#> asset:mob/0393.labyria_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/393/death

# デバッグ用
    kill @e[type=marker,tag=AZ.Marker.SummonPoint]

# モデル削除
    function animated_java:labyria/remove/all
