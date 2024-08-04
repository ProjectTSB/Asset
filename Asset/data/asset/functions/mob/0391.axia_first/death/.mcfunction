#> asset:mob/0391.axia_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0391.axia_first/_/death

# デバッグ用
    # AnimatedJavaモデルの削除
        function animated_java:axia/remove/all
    # マーカー削除
        kill @e[tag=AV.Marker.SummonPoint]
    # ディスプレイ削除
        kill @e[tag=AV.SlashEffect,distance=..100]
