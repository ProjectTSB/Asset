#> asset:mob/0365.frestchika_v2/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0365.frestchika_v2/_/death

# デバッグ用
    # AnimatedJavaモデルの削除
        function animated_java:frestchika_v2/remove/all
    # Marker削除
        kill @e[tag=A5.Marker.SummonPoint]