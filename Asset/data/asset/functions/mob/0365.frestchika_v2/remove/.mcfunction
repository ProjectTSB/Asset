#> asset:mob/0365.frestchika_v2/remove/
#
# Mobのremove時の処理
#
# @within function asset:mob/0365.frestchika_v2/_/remove

# デバッグ用
    # AnimatedJavaモデルの削除
        function animated_java:frestchika_v2/remove/all
    # Marker削除
        kill @e[tag=A5.Marker.SummonPoint]