#> asset:mob/0372.tutankhamen/tick/skill/dash/charge/check_collide_back
#
# 背後にブロックがないかチェック
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/charge/

execute unless block ^ ^ ^-0.5 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^-0.5 #lib:no_collision run return 1
