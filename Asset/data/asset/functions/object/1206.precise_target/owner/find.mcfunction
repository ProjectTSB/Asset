#> asset:object/1206.precise_target/owner/find
#
# 所有者にPreCise.Ownerを付ける
# 同じディメンションの16m以内にいる、死亡中でもスペクテイターでもないプレイヤーだけが対象
#
# @input
#   as 的
#   storage asset:context this.UserID : 所有者のUserID
# @output tag PreCise.Owner : 所有者 (呼出側が外す)
# @within function
#   asset:object/1206.precise_target/init/place
#   asset:object/1206.precise_target/tick/check_owner

    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a[distance=..16,tag=!Death,gamemode=!spectator] if score @s UserID = $UserID Temporary run tag @s add PreCise.Owner
    scoreboard players reset $UserID Temporary
