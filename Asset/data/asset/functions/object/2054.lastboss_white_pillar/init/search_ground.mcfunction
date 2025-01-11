#> asset:object/2054.lastboss_white_pillar/init/search_ground
#
#
#
# @within function
#   asset:object/2054.lastboss_white_pillar/init/
#   asset:object/2054.lastboss_white_pillar/init/search_ground

# 下にずらして再帰
    execute if entity @s[distance=..16] if block ~ ~ ~ #lib:no_collision positioned ~ ~-1 ~ run function asset:object/2054.lastboss_white_pillar/init/search_ground

# ブロックだったらそこまで移動
    execute unless block ~ ~ ~ #lib:no_collision align xyz run tp @s ~0.5 ~1 ~0.5
