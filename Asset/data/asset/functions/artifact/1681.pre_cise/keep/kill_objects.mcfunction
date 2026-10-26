#> asset:artifact/1681.pre_cise/keep/kill_objects
#
# 自分のbig_preciseと的を全て消す
# 神器をリロード状態(1682)へ置換した直後に呼ぶ 一式はリロード状態の神器のtickで召喚し直される
#
# @input as player at player
# @within function asset:artifact/1681.pre_cise/trigger/3.main

# 自分のbig_preciseと的を消す
    scoreboard players operation $UserID Temporary = @s UserID
    execute as @e[type=item_display,tag=PreCise.BigPrecise,distance=..16] if score @s UserID = $UserID Temporary run kill @s
    execute as @e[type=item_display,tag=PreCise.Target,distance=..16] if score @s UserID = $UserID Temporary run kill @s

# リセット
    scoreboard players reset $UserID Temporary
