#> asset:object/1195.right_glove_creeper/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1195/tick

#> Private
# @private
    #declare score_holder $UserID

# OwnerにTag付与
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run tag @s add 1195.Owner
    scoreboard players reset $UserID Temporary

#攻撃状態でない場合の処理

#攻撃状態の処理


# リセット
    tag @p[tag=1195.Owner] remove 1195.Owner

# 消滅処理
    execute store result storage asset:context this.Tick int 0.9999999999 run data get storage asset:context this.Tick
    execute if data storage asset:context this{Tick:0} run function asset:object/1195.right_glove_creeper/kill/
