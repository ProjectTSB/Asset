#> asset:artifact/1078.pigeon_blood/trigger/resonance_attack/2.entity_init
#
# 共鳴攻撃用entityのinit処理
#
# @within function asset:artifact/1078.pigeon_blood/trigger/resonance_attack/1.summon_entity

# UserIDをコピー
    scoreboard players operation @s TY.OwnerID = @p[tag=this] UserID

# InitTagを削除
    tag @s remove Init