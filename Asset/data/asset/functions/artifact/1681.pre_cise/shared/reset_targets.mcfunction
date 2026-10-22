#> asset:artifact/1681.pre_cise/shared/reset_targets
#
# 自分の的を全て消し、現在の視線を基準に3つ召喚し直す
# 神器の置換直後に呼び、置換後の神器に合わせた見た目にする
#
# @input
#   as player
#   score $Chest Temporary : 置換後の神器がリロード状態(1682)なら1、通常(1681)なら0
# @within function
#   asset:artifact/1681.pre_cise/trigger/3.main
#   asset:artifact/1682.pre_cise_empty/trigger/3.main

# 自分の的を全て消す
    scoreboard players operation $UserID Temporary = @s UserID
    execute as @e[type=block_display,tag=PreCise.Target,distance=..16] if score @s UserID = $UserID Temporary run kill @s

# 的を召喚し直す
    function asset:artifact/1681.pre_cise/shared/summon_targets

# リセット
    scoreboard players reset $UserID Temporary
