#> asset:mob/0372.tutankhamen/tick/skill/common/check_collide/back/0.5
#
# 背後にブロックがないかチェック
#
# @within function asset:mob/0372.tutankhamen/tick/skill/**

execute unless block ^ ^ ^-0.5 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^-0.5 #lib:no_collision run return 1
