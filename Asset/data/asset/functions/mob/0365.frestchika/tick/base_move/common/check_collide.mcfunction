#> asset:mob/0365.frestchika/tick/base_move/common/check_collide
#
# 移動時、眼の前にブロックがあるかどうかのチェック
#
# @within function asset:mob/0365.frestchika/tick/base_move/skill/**

execute unless block ^ ^ ^1 #asset:mob/0365.frestchika/no_collision run return 1
execute anchored eyes unless block ^ ^ ^1 #asset:mob/0365.frestchika/no_collision run return 1
