#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/
#
# 地面探す
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/skill/ground_slam/
#   asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/

# プレイヤーの位置の上にワープ
    tp @s ~ ~5 ~

# 再帰スタート
    function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/recursive
