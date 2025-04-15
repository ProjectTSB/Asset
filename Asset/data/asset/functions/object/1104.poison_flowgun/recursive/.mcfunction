#> asset:object/1104.poison_flowgun/recursive/
#
# 継承先などから実行される処理
#
# @within asset:object/alias/1104/recursive

# vfx
    execute if predicate lib:random_pass_per/30 run particle minecraft:entity_effect ~ ~ ~ 0.1 0.3 0.1 1 0
