#> asset:mob/0372.tutankhamen/tick/skill/dash/charge/check_collide
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/charge/move

execute unless block ^ ^ ^1.5 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^1.5 #lib:no_collision run return 1
