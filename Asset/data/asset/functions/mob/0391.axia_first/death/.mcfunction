#> asset:mob/0391.axia_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/391/death


# マーカー削除
    kill @e[tag=AV.Marker.Movement]
# ディスプレイ削除
    kill @e[tag=AV.AnnounceLine,distance=..100]

# スケジュール起動
    tag @e[type=marker,tag=AV.Marker.SummonPoint,distance=..200] add AV.Death
    schedule function asset:mob/0391.axia_first/ai/general/8.death/schedule 1t
