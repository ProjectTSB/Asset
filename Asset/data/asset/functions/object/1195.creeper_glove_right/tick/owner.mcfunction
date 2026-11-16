#> asset:object/1195.creeper_glove_right/tick/owner
#
# 所有者に1195.Ownerを付け、所有者が16m以内にいない・死亡中・スペクテイターなら失敗を返す
#
# @within function asset:object/1195.creeper_glove_right/tick/

#> Private
# @private
    #declare score_holder $UserID

# 所有者を探す
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a[gamemode=!spectator,tag=!Death,distance=..64] if score @s UserID = $UserID Temporary run tag @s add 1195.Owner
    scoreboard players reset $UserID Temporary

# 見つかったかを返す
    execute if entity @p[tag=1195.Owner,distance=..64] run return 1
    return fail
