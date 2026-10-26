#> asset:object/1207.big_precise/tick/check_owner
#
# 所有者が、このObjectを召喚した神器をメインハンドに持っているか調べる
#
# @input
#   as big_precise
#   storage asset:context this : UserIDと、召喚した神器のID (ArtifactID 1681か1682)
# @output
#   score $Alive Temporary : 条件を満たす場合は1 (呼出側が消す)
#   tag PreCise.Owner : 所有者 (呼出側が外す)
# @within function asset:object/1207.big_precise/tick/

# 所有者を取得する (同じディメンションの16m以内にいる、死亡中でもスペクテイターでもないプレイヤー)
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a[distance=..16,tag=!Death,gamemode=!spectator] if score @s UserID = $UserID Temporary run tag @s add PreCise.Owner

# 所有者が召喚した神器をメインハンドに持っているか調べる (スニークは問わない)
    scoreboard players set $Alive Temporary 0
    execute if data storage asset:context this{ArtifactID:1681} as @p[tag=PreCise.Owner,distance=..16] if predicate asset:object/1207.big_precise/holding_1681 run scoreboard players set $Alive Temporary 1
    execute if data storage asset:context this{ArtifactID:1682} as @p[tag=PreCise.Owner,distance=..16] if predicate asset:object/1207.big_precise/holding_1682 run scoreboard players set $Alive Temporary 1

# リセット
    scoreboard players reset $UserID Temporary
