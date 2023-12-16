#> asset:artifact/1033.thelema_of_blue_sea/trigger/marker/init
#
# markerのInit処理
#
# @within function asset:artifact/1033.thelema_of_blue_sea/trigger/3.main

# プレイヤーのスコアをコピー
    scoreboard players operation @s SP.AttackCount = @p[tag=this] SP.AttackCount

# プレイヤーのRotationをコピー
    data modify entity @s Rotation set from entity @p[tag=this] Rotation

# Initタグの削除
    tag @s remove SP.MarkerInit