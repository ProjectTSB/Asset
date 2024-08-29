#> asset:mob/0392.ecual_first/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/0392.ecual_first/_/death

# ディスプレイ削除
    kill @e[tag=AW.WaterMagic]
    kill @e[tag=AW.WaterMagicDisplay]
    kill @e[tag=AW.AnnounceLine]
    kill @e[tag=AW.AnnounceLineEven]
    kill @e[tag=AW.WaterBullet]
    kill @e[tag=AW.QuietusRain]
    kill @e[tag=AW.WaterWall]
    kill @e[tag=AW.Critical]

# スケジュール起動
    schedule function asset:mob/0392.ecual_first/ai/general/8.death/schedule 1t
