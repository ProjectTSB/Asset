#> asset:mob/0372.tutankhamen/tick/skill/common/check_collide/forward/1.0
#
# 壁に激突してるかどうかのチェック
#
# @within function asset:mob/0372.tutankhamen/tick/skill/**

execute unless block ^ ^ ^0.5 #lib:no_collision run return 1
execute unless block ^ ^ ^1.0 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^0.5 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^1.0 #lib:no_collision run return 1
