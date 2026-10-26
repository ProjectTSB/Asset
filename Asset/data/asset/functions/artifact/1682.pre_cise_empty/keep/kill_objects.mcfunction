#> asset:artifact/1682.pre_cise_empty/keep/kill_objects
#
# 自分のbig_preciseと的を全て消す
# 神器を弾数を満たした状態(1681)へ置換した直後に呼ぶ 一式は1681のtickで召喚し直される
#
# @input as player at player
# @within function asset:artifact/1682.pre_cise_empty/trigger/3.main

# 自分のbig_preciseと的を消す
    scoreboard players operation $UserID Temporary = @s UserID
    execute as @e[type=item_display,tag=PreCise.BigPrecise,distance=..16] if score @s UserID = $UserID Temporary run kill @s
    execute as @e[type=item_display,tag=PreCise.Target,distance=..16] if score @s UserID = $UserID Temporary run kill @s

# リセット
    scoreboard players reset $UserID Temporary
