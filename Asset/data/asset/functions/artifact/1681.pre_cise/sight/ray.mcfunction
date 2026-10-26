#> asset:artifact/1681.pre_cise/sight/ray
#
# 向いている方向へ0.5mずつ進み、PreCise.Seenの当たり判定へ壁に遮られず届くか調べる
#
# @input
#   as player at 現在位置 facing 調べる敵の目
#   起点は頭上のbig_preciseの位置 (プレイヤーの3m上)
# @output score $Visible Temporary : 届けば1
# @within function
#   asset:artifact/1681.pre_cise/aim/search
#   asset:artifact/1681.pre_cise/sight/ray
#   asset:artifact/1681.pre_cise/sight/verify

# 敵の当たり判定に届いた
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=PreCise.Seen,dx=0] run scoreboard players set $Visible Temporary 1

# 届いていなければ、先が通れて起点から20m以内の間は進む (起点とプレイヤーの足元は3m離れているので、3m下げた位置から足元までの距離で測る)
    execute if score $Visible Temporary matches 0 if block ^ ^ ^0.5 #lib:no_collision/ positioned ^ ^ ^0.5 positioned ~ ~-3 ~ if entity @s[distance=..20] positioned ~ ~3 ~ run function asset:artifact/1681.pre_cise/sight/ray
