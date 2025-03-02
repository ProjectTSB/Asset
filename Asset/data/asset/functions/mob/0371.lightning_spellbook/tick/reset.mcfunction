#> asset:mob/0371.lightning_spellbook/tick/reset
#
# リセット処理
#
# @within function
#   asset:mob/0371.lightning_spellbook/tick/ready
#   asset:mob/0371.lightning_spellbook/tick/summon

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -120..-90
