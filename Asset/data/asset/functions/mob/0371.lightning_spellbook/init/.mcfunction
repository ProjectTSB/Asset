#> asset:mob/0371.lightning_spellbook/init/
#
# Mob召喚時のInit処理
#
# @within function asset:mob/alias/371/init

# スコア初期化
    scoreboard players set @s General.Mob.Tick -80

# 左回りタイプか右回りタイプか決定
    execute if predicate lib:random_pass_per/50 run tag @s add 2D.LeftRotate
