#> asset:mob/0437.lawless_iron_doll/tick/base_move/common/check_collide
#
# 移動時、眼の前にブロックがあるかどうかのチェック
#
# @within function asset:mob/0437.lawless_iron_doll/tick/base_move/skill/**

execute unless block ^ ^ ^1 #asset:mob/0437.lawless_iron_doll/no_collision run return 1
execute anchored eyes unless block ^ ^ ^1 #asset:mob/0437.lawless_iron_doll/no_collision run return 1
