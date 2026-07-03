#> asset:mob/0021.demon_eye/move/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/21/move

# 被ダメしてないなら移動
    execute if data entity @s {HurtTime:0s} run function asset:mob/super.method
