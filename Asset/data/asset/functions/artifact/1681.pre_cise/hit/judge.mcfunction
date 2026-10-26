#> asset:artifact/1681.pre_cise/hit/judge
#
# 目の位置から視線方向へ1m進んだ地点に、自分の的があるか判定する
#
# @input as player
# @output
#   score $Hit Temporary : 的に命中していれば1
#   score $UserID Temporary : 実行者のUserID
#   tag PreCise.Hit : 命中した的
# @within function asset:artifact/1681.pre_cise/trigger/3.main

# 判定前に自分の的を現在の目の位置から1m先へ、移動量による補正なしで移動する (Objectのtickは神器処理より後に走るため)
    scoreboard players operation $UserID Temporary = @s UserID
    tag @s add PreCise.Owner
    execute as @e[type=item_display,tag=PreCise.Target,distance=..8] if score @s UserID = $UserID Temporary at @s run function asset:artifact/1681.pre_cise/hit/follow
    tag @s remove PreCise.Owner

# 視線の先に自分の的があれば命中 (許容は0.05m以内)
    execute anchored eyes positioned ^ ^ ^1 as @e[type=item_display,tag=PreCise.Target,tag=!PreCise.Hit,distance=..0.05] if score @s UserID = $UserID Temporary run tag @s add PreCise.Hit
    execute store success score $Hit Temporary if entity @e[type=item_display,tag=PreCise.Hit,distance=..8]
