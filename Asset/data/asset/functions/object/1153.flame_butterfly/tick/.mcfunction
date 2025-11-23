#> asset:object/1153.flame_butterfly/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1153/tick

#> Private
# @private
    #declare score_holder $UserID

# 演出
    function asset:object/1153.flame_butterfly/tick/vfx

# OwnerにTag付与
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1153.Owner
    scoreboard players reset $UserID Temporary

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 移動
    function asset:object/1153.flame_butterfly/tick/move

# リセット
    tag @p[tag=1153.Owner] remove 1153.Owner

# 消滅処理
    execute if score @s General.Object.Tick matches 200.. run function asset:object/1153.flame_butterfly/tick/kill
