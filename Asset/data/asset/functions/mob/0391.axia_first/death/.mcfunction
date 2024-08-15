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
        kill @e[tag=AV.Marker.Movement]
    # ディスプレイ削除
        kill @e[tag=AV.SlashEffect,distance=..100]
        kill @e[tag=AV.SlashEffectMini,distance=..100]
        kill @e[tag=AV.SlashSonic,distance=..100]
        kill @e[tag=AV.SonicBoomEffect,distance=..100]
        kill @e[tag=AV.AnnounceLine,distance=..100]
        kill @e[tag=AV.DimSword,distance=..100]
        kill @e[tag=AV.DimSwordDisplay,distance=..100]
        kill @e[tag=AV.ShockWave,distance=..100]
        kill @e[tag=AV.CriticalHit,distance=..100]
