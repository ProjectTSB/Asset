#> asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/hold
#
# この手の乱舞技は当たると対象をロックすることが多い
#
# @within function asset:mob/0311.blazing_inferno/tick/skill/rush_punch/punch/

# 落下速度をリセットするために一度虚空に飛ぶ
    tp @s 0 0 0

# そして戻ってくる
    tp @s ~ ~ ~ ~ ~
