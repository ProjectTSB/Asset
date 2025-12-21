#> asset:object/2028.lastboss_meteor/init/recursive_down
#
# マーカーを床に貼り付ける処理
#
# @within function
#   asset:object/2028.lastboss_meteor/init/aiming_summon/
#   asset:object/2028.lastboss_meteor/init/spread_summon/spread
#   asset:object/2028.lastboss_meteor/init/recursive_down

# 下にずらして再帰
    execute if entity @s[distance=..64] if block ~ ~ ~ #lib:no_collision/ positioned ~ ~-1 ~ run function asset:object/2028.lastboss_meteor/init/recursive_down

# ブロックだったらそこまで移動
    execute unless block ~ ~ ~ #lib:no_collision/ align xyz run tp @s ~0.5 ~1 ~0.5
