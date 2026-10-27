#> asset:effect/0396.satelite_drop/tick/
#
# Effectのtick処理
#
# @within function asset:effect/0396.satelite_drop/_/tick

#> Private
# @private
    #declare score_holder $Stack
    #declare score_holder $UserID
    #declare score_holder $BulletCount
    #declare tag 0396.RemovalCandidate

# スタックと周囲のObject 1192の数を比較
    execute store result score $Stack Temporary run data get storage asset:context Stack
    scoreboard players operation $UserID Temporary = @s UserID
    execute as @e[type=marker,tag=1192.Idle,distance=..3] if score @s 1192.UserID = $UserID Temporary run tag @s add 0396.RemovalCandidate
    execute store result score $BulletCount Temporary if entity @e[type=marker,tag=0396.RemovalCandidate,distance=..3]
    #数が合わないならObjectを削除する
    execute if score $Stack Temporary < $BulletCount Temporary as @e[type=marker,tag=0396.RemovalCandidate,distance=..3,sort=arbitrary,limit=1] if score @s 1192.UserID = $UserID Temporary run kill @s

# リセット
    scoreboard players reset $Stack Temporary
    scoreboard players reset $UserID Temporary
    scoreboard players reset $BulletCount Temporary
    tag @e[type=marker,tag=0396.RemovalCandidate,distance=..3] remove 0396.RemovalCandidate
