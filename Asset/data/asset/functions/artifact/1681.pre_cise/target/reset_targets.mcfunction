#> asset:artifact/1681.pre_cise/target/reset_targets
#
# 自分の的を全て消し、狙う敵の有無に合わせて召喚し直す
# 狙う敵がいる状態といない状態が切り替わったときに呼ぶ
#
# @input as player at player
# @within function asset:artifact/1681.pre_cise/keep/targets

# 自分の的を全て消す
    scoreboard players operation $UserID Temporary = @s UserID
    execute as @e[type=item_display,tag=PreCise.Target,distance=..16] if score @s UserID = $UserID Temporary run kill @s

# 的を召喚し直す
    function asset:artifact/1681.pre_cise/target/summon_targets

# リセット
    scoreboard players reset $UserID Temporary
