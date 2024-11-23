#> asset:mob/0392.ecual_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/392/death

# ディスプレイ削除
    kill @e[tag=AW.AnnounceLine]
    kill @e[tag=AW.AnnounceLineEven]

# スケジュール起動
    tag @e[type=marker,tag=AW.Marker.SummonPoint,distance=..200] add AW.Death
    schedule function asset:mob/0392.ecual_first/ai/general/8.death/schedule 1t
