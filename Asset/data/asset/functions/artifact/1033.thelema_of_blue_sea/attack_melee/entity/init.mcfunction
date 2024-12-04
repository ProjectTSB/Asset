#> asset:artifact/1033.thelema_of_blue_sea/attack_melee/entity/init
#
# Init処理
#
# @within function asset:artifact/1033.thelema_of_blue_sea/attack_melee/

# プレイヤーのスコアをコピー
    scoreboard players operation @s SP.AttackCount = @p[tag=this] SP.AttackCount
    scoreboard players operation @s SP.UserID = @p[tag=this] UserID

# プレイヤーのRotationをコピー
    data modify entity @s Rotation set from entity @p[tag=this] Rotation

# Initタグの削除
    tag @s remove SP.Init