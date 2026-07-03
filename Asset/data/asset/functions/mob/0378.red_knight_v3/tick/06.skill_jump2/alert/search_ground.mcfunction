#> asset:mob/0378.red_knight_v3/tick/06.skill_jump2/alert/search_ground
#
#
#
# @within function
#   asset:mob/0378.red_knight_v3/tick/06.skill_jump2/main
#   asset:mob/0378.red_knight_v3/tick/06.skill_jump2/alert/search_ground

# ブロックだったらパーティクル投影
    execute unless block ~ ~ ~ #lib:no_collision/ positioned ~ ~1 ~ run function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/alert/alert

# 奈落だったり、下が遠すぎたらそのまま実行
    execute unless entity @s[distance=..16] run function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/alert/alert

# 下にずらして再帰
    execute if entity @s[distance=..16] if block ~ ~ ~ #lib:no_collision/ positioned ~ ~-1 ~ run function asset:mob/0378.red_knight_v3/tick/06.skill_jump2/alert/search_ground
