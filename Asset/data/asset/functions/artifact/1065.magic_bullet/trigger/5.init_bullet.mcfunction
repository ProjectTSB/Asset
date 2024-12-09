#> asset:artifact/1065.magic_bullet/trigger/5.init_bullet
#
# 弾の初期化処理
#
# @within function asset:artifact/1065.magic_bullet/trigger/3.main

# Tagを付与
    tag @s add TL.Bullet
    tag @s add TL.LoopTarget

# 視点を使用者に合わせる
    data modify entity @s Rotation set from entity @p[tag=this] Rotation

# 使用回数をスコアへ
    scoreboard players operation @s TL.UseCount = $UseCount Temporary

# OwnerIDを設定
    scoreboard players operation @s TL.OwnerID = @p[tag=this] UserID

# プレイヤーを狙う処理
    execute if entity @p[tag=this,tag=TL.AimToPlayer] run tag @s add TL.AimToPlayer
