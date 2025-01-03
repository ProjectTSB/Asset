#> asset:mob/0372.tutankhamen/tick/skill/dash/check_collide
#
# 壁に激突してるかどうかのチェック
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/**

execute unless block ^ ^ ^1 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^1 #lib:no_collision run return 1
