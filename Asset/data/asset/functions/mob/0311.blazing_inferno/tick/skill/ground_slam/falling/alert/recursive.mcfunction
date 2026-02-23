#> asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/recursive
#
# 地面を探す
#
# @within function
#   asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/
#   asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/recursive

# 現在の実行座標の下に判定がなかったら
    execute unless block ~ ~-1 ~ #lib:no_collision/ positioned ~ ~ ~ run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/summon

# 地面まで降りる
    execute if entity @s[distance=..16] positioned ~ ~-1 ~ if block ~ ~ ~ #lib:no_collision/ run function asset:mob/0311.blazing_inferno/tick/skill/ground_slam/falling/alert/recursive
