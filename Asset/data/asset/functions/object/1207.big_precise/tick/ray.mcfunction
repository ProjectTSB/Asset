#> asset:object/1207.big_precise/tick/ray
#
# 向いている方向へ0.5mずつ進み、PreCise.Seenの当たり判定へ壁に遮られず届くか調べる
#
# @input
#   as big_precise at 現在位置 facing 調べる敵の目
# @output score $Visible Temporary : 届けば1
# @within function
#   asset:object/1207.big_precise/tick/search
#   asset:object/1207.big_precise/tick/ray

# 敵の当たり判定に届いた
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=PreCise.Seen,dx=0] run scoreboard players set $Visible Temporary 1

# 届いていなければ、先が通れて20m以内の間は進む
    execute if score $Visible Temporary matches 0 if block ^ ^ ^0.5 #lib:no_collision/ positioned ^ ^ ^0.5 if entity @s[distance=..20] run function asset:object/1207.big_precise/tick/ray
