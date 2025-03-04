#> asset:mob/0372.tutankhamen/tick/skill/dash/charge/check_collide/forward
#
#
#
# @within function asset:mob/0372.tutankhamen/tick/skill/dash/**

execute unless block ^ ^ ^0.5 #lib:no_collision run return 1
execute unless block ^ ^ ^1.0 #lib:no_collision run return 1
execute unless block ^ ^ ^1.5 #lib:no_collision run return 1

execute anchored eyes unless block ^ ^ ^0.5 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^1.0 #lib:no_collision run return 1
execute anchored eyes unless block ^ ^ ^1.5 #lib:no_collision run return 1
