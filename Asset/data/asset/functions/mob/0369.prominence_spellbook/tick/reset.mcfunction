#> asset:mob/0369.prominence_spellbook/tick/reset
#
# リセット処理
#
# @within function
#   asset:mob/0369.prominence_spellbook/tick/ready

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -100..-70
