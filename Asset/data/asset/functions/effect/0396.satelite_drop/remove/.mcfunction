#> asset:effect/0396.satelite_drop/remove/
#
# Effectが削除された時の処理
#
# @within function asset:effect/0396.satelite_drop/_/remove

#> Private
# @private
    #declare score_holder $E0396.UserID

# 自身に紐づいていて、Idleタグを持つObject 1192を削除
    scoreboard players operation $E0396.UserID Temporary = @s UserID
    execute as @e[type=marker,tag=O1192.Idle,distance=..3] if score @s O1192.UserID = $E0396.UserID Temporary run kill @s

# リセット
    scoreboard players reset $E0396.UserID
