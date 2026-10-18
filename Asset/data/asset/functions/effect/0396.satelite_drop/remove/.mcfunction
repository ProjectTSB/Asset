#> asset:effect/0396.satelite_drop/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0396.satelite_drop/_/remove

#> Private
# @private
    #declare score_holder $UserID

# 自身に紐づいていて、Idleタグを持つObject 1192を削除
    scoreboard players operation $UserID Temporary = @s UserID
    execute as @e[type=marker,tag=1192.Idle,distance=..3] if score @s 1192.UserID = $UserID Temporary run kill @s

# リセット
    scoreboard players reset $UserID Temporary
