#> asset:mob/0370.wave_spellbook/tick/reset
#
# リセット
#
# @within function
#   asset:mob/0370.wave_spellbook/tick/ready
#   asset:mob/0370.wave_spellbook/tick/summon

# 次に攻撃するタイミングをランダムにする
    execute store result score @s General.Mob.Tick run random value -120..-90
