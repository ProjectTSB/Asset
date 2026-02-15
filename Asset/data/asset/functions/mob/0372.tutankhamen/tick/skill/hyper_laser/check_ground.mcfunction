#> asset:mob/0372.tutankhamen/tick/skill/hyper_laser/check_ground
#
# 地面チェック
#
# @within function
#   asset:mob/0372.tutankhamen/tick/skill/hyper_laser/
#   asset:mob/0372.tutankhamen/tick/skill/hyper_laser/check_ground

execute unless entity @s[distance=..10] run return fail
execute unless block ~ ~ ~ #lib:no_collision/ run return 1
execute if block ~ ~ ~ #lib:no_collision/ positioned ~ ~-1 ~ run return run function asset:mob/0372.tutankhamen/tick/skill/hyper_laser/check_ground
