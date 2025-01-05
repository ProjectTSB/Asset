#> asset:artifact/1079.allochromatic/trigger/resonance_attack/2.init
#
#
#
# @within function asset:artifact/1079.allochromatic/trigger/resonance_attack/1.summon_entity

# UserIDをコピー
    scoreboard players operation @s TZ.OwnerID = @p[tag=this] UserID

# 向きをOwnerと合わせる
    data modify entity @s Rotation set from entity @p[tag=this] Rotation

# Initタグを削除
    tag @s remove Init