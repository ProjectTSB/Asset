#> asset:object/1206.precise_target/direction/mark_aim
#
# 所有者が保存した狙う敵にPreCise.Aimedを付ける
# 狙う敵がいない (-1または未設定) 、または実行位置から24m以内にいなければ何も付けない
#
# @input
#   at Objectの位置
#   tag PreCise.Owner : 所有者 (16m以内)
# @output tag PreCise.Aimed : 狙う敵 (呼出側が外す)
# @within function asset:object/1206.precise_target/direction/aim.m

# 所有者が保存した狙う敵のMobUUIDを得る (-1と未設定は敵なし)
    scoreboard players set $MobUUID Temporary -1
    execute if score @p[tag=PreCise.Owner,distance=..16] 1AP.AimMobUUID matches 0.. run scoreboard players operation $MobUUID Temporary = @p[tag=PreCise.Owner,distance=..16] 1AP.AimMobUUID

# MobUUIDが一致する敵に付ける
    execute if score $MobUUID Temporary matches 0.. as @e[type=#lib:living_without_player,tag=Enemy,distance=..24] if score @s MobUUID = $MobUUID Temporary run tag @s add PreCise.Aimed

# リセット
    scoreboard players reset $MobUUID Temporary
