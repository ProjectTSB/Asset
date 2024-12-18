#> asset:mob/0106.mini_shulker/death/
#
# Mobの死亡時の処理
#
# @within function asset:mob/alias/106/death

# 弾を消す
    kill @e[type=shulker_bullet,scores={ObjectID=2138}]
