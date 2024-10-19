#> asset:mob/0182.skull_raven/hurt/
#
# Mobの被ダメージ時の処理
#
# @within function asset:mob/alias/182/hurt

# ハードかつ30%の確率でプレイヤーから離れる
    execute if predicate api:global_vars/difficulty/min/hard if predicate lib:random_pass_per/30 run function asset:mob/0182.skull_raven/hurt/knockback
