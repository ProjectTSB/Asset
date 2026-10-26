#> asset:artifact/1681.pre_cise/fire/mark_aim
#
# 実行者が狙う敵にPreCise.Aimedを付ける
# 狙う敵がいない (-1または未設定) 、または実行位置から32m以内にいなければ何も付けない
#
# @input as player at 実行位置 (big_precise)
# @output tag PreCise.Aimed : 狙う敵 (呼出側が外す)
# @within function asset:artifact/1681.pre_cise/fire/shoot

# 狙う敵のMobUUIDを得る (-1と未設定は敵なし)
    scoreboard players set $MobUUID Temporary -1
    execute if score @s 1AP.AimMobUUID matches 0.. run scoreboard players operation $MobUUID Temporary = @s 1AP.AimMobUUID

# MobUUIDが一致する敵に付ける
    execute if score $MobUUID Temporary matches 0.. as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,tag=!Death,distance=..32] if score @s MobUUID = $MobUUID Temporary run tag @s add PreCise.Aimed

# リセット
    scoreboard players reset $MobUUID Temporary
