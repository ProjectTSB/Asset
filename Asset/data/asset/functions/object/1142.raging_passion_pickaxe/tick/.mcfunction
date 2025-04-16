#> asset:object/1142.raging_passion_pickaxe/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/1142/tick

# 演出
    particle block magma_block ^ ^0.2 ^0.5 0 0 0 0 2 normal @a
    execute if predicate lib:random_pass_per/70 run particle flame ~ ~ ~ 0.05 0.05 0.05 0 1 normal @a
    playsound entity.iron_golem.damage neutral @a ~ ~ ~ 0.1 0.7

# 回転
    execute store result storage asset:context this.SpinInterval int 0.9999999999 run data get storage asset:context this.SpinInterval
    execute if data storage asset:context this{SpinInterval:0} run function asset:object/1142.raging_passion_pickaxe/tick/spin
    execute if data storage asset:context this{SpinInterval:0} run data modify storage asset:context this.SpinInterval set value 4

# ダメージのインターバル
    execute store result storage asset:context this.DamageInterval int 0.9999999999 run data get storage asset:context this.DamageInterval
    execute if data storage asset:context this{DamageInterval:0} run tag @s add 1142.Damage
    execute if data storage asset:context this{DamageInterval:0} run data modify storage asset:context this.DamageInterval set value 2

# super.tick
    execute at @s run function asset:object/super.tick

# リセット
    tag @s[tag=1142.Damage] remove 1142.Damage
