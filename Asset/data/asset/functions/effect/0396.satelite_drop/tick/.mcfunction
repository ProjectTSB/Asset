#> asset:effect/0396.satelite_drop/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0396.satelite_drop/_/tick

#> Private
# @private
    #declare score_holder $E0396.Stack
    #declare score_holder $E0396.UserID
    #declare score_holder $E0396.BulletCount
    #declare tag E0396.RemovalCandidate

# スタックと周囲のObject 1192の数を比較
    execute store result score $E0396.Stack Temporary run data get storage asset:context Stack
    scoreboard players operation $E0396.UserID Temporary = @s UserID
    execute as @e[type=marker,tag=O1192.Idle,distance=..3] if score @s O1192.UserID = $E0396.UserID Temporary run tag @s add E0396.RemovalCandidate
    execute store result score $E0396.BulletCount Temporary if entity @e[type=marker,tag=E0396.RemovalCandidate,distance=..3]
    #数が合わないならObjectを削除する
    execute if score $E0396.Stack Temporary < $E0396.BulletCount Temporary as @e[type=marker,tag=E0396.RemovalCandidate,distance=..3,sort=arbitrary,limit=1] if score @s O1192.UserID = $E0396.UserID Temporary run kill @s

# リセット
    scoreboard players reset $E0396.Stack
    scoreboard players reset $E0396.UserID
    scoreboard players reset $E0396.BulletCount
    tag @e[type=marker,tag=E0396.RemovalCandidate,distance=..3] remove E0396.RemovalCandidate
