#> asset:mob/0393.labyria_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/393/death

# スケジュール起動
    tag @e[type=marker,tag=AZ.Marker.SummonPoint,distance=..200] add AZ.Death
    schedule function asset:mob/0393.labyria_first/ai/general/5.death/schedule 1t
