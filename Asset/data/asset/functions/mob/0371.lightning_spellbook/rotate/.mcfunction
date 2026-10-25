#> asset:mob/0371.lightning_spellbook/rotate/
#
# 継承先などから実行される処理
#
# @within asset:mob/alias/371/rotate

# プレイヤーが下にいなければsuper.rotate
    execute if entity @s[tag=!2D.OnTop] run function asset:mob/super.method

# プレイヤーが下にいれば旋回する
    execute if entity @s[tag= 2D.OnTop] at @s if entity @s[tag=2D.LeftRotate] run tp @s ^ ^ ^ ~-12 0
    execute if entity @s[tag= 2D.OnTop] at @s if entity @s[tag=!2D.LeftRotate] run tp @s ^ ^ ^ ~12 0
