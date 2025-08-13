#> asset:mob/0187.flame_mage/tick/reset
#
#
#
# @within function asset:mob/0187.flame_mage/tick/

# 次に攻撃するタイミングをランダムにする
# 難易度によって変える
    execute if predicate api:global_vars/difficulty/1_normal store result score @s General.Mob.Tick run random value -100..-80
    execute if predicate api:global_vars/difficulty/2_hard store result score @s General.Mob.Tick run random value -90..-70
    execute if predicate api:global_vars/difficulty/min/3_blessless store result score @s General.Mob.Tick run random value -70..-50
